library(dplyr)
library("EnsDb.Hsapiens.v86")
library(readr)
library(DESeq2)
library(ggplot2)
library("EnsDb.Hsapiens.v86")
library(ggrepel)
library(clusterProfiler)
library(enrichplot)
library(org.Hs.eg.db)
library(tidyr)
library(broom)
library(gdata)
library(lemon)
library(tibble)
library(rstatix)


TPM <- function(source,region,input_dir,gene,gene_name){
  overall_info <- read.csv('/home/nik010/nik010/data/AMP-AD/metadata_updated.csv', sep = ',')
  ##importing dataset
  overall_info <- overall_info %>% dplyr::filter(overall_info$Tissue == region)
  df_gene <- 
    read.table(gzfile(input_dir),sep="\t",stringsAsFactors = FALSE,header = TRUE) %>%
    dplyr::slice(-(1:4)) %>% 
    column_to_rownames("feature")
  if (source == "MCBB" | source == "ROSMAP"){
    names(df_gene) <- substring(names(df_gene),2,)
  }
  # filter samples that are diagnosed as control/AD, ignore others
  df_gene <- df_gene[, names(df_gene) %in% overall_info$SampleID]
  df_gene <- df_gene %>% rownames_to_column("ensembl_gene_id")
  overall_info <- overall_info %>% filter(SampleID %in% colnames(df_gene)) %>% slice(order(factor(SampleID, levels = colnames(df_gene))))
  
  ##Gene filtering!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  # Remove genes that have less than 1 RPM counts in at least 50% of samples per Tissue
  #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  library(edgeR)
  #rownames(df_gene) <- NULL
  d0 <- df_gene %>% column_to_rownames("ensembl_gene_id") %>% DGEList()
  d0 <- calcNormFactors(d0)
  cpm <- as.data.frame(cpm(d0,log=TRUE)) %>% 
    rownames_to_column("ensembl_gene_id")
  cpm$ensembl_gene_id <- substring(cpm$ensembl_gene_id,1,15)
  cpm <- cpm %>% dplyr::filter(ensembl_gene_id == gene)
  cpm <- as.data.frame(t(cpm)) %>% 
    rownames_to_column("sample_id") %>%
    dplyr::filter(sample_id %in% overall_info$SampleID)
  colnames(cpm)[2] <- "logCPM"
  return(cpm)
}

candidate_genes <- function(gene,gene_name){
  
  metadata <- read.csv('/home/nik010/nik010/data/AMP-AD/metadata_updated.csv')
  
  source = c("MSBB","MSBB","MSBB","MSBB", 
             "ROSMAP","MCBB","MCBB")
  region = c("BM10","BM22","BM36","BM44",
             "Dorsolateral prefrontal cortex","Cerebellum","Temporal cortex")
  input_dir = c('/home/nik010/nik010/data/AMP-AD/MSSM_all_counts_matrix.txt.gz','/home/nik010/nik010/data/AMP-AD/MSSM_all_counts_matrix.txt.gz','/home/nik010/nik010/data/AMP-AD/MSSM_all_counts_matrix.txt.gz','/home/nik010/nik010/data/AMP-AD/MSSM_all_counts_matrix.txt.gz',
                '/home/nik010/nik010/data/AMP-AD/ROSMAP_all_counts_matrix.txt.gz','/home/nik010/nik010/data/AMP-AD/Mayo_CBE_all_counts_matrix.txt.gz','/home/nik010/nik010/data/AMP-AD/Mayo_TCX_all_counts_matrix.txt.gz')
  overall <- data.frame(matrix(ncol=2,nrow=0, dimnames=list(NULL, c("sample_id","logCPM" ))))
  for (i in 1: length(source)){
    print(i)
    cpm <- TPM(source[i],region[i],input_dir[i],gene,gene_name)
    overall <- rbind(overall,cpm)
  }
  
  ###############merge##############
  overall <- merge(overall,metadata, by.x = 'sample_id', by.y = 'SampleID', all.x = TRUE)
  overall <- overall %>% 
    mutate(Label =  case_when (Tissue == "Dorsolateral prefrontal cortex" ~ "ROSMAP-DPC",
                               Tissue == "Cerebellum" ~ "MCBB-Cerebellum",
                               Tissue == "Temporal cortex" ~ "MCBB-TCX",
                               Tissue == "BM10" ~ "MSBB-BM10",
                               Tissue == "BM22" ~ "MSBB-BM22",
                               Tissue == "BM36" ~ "MSBB-BM36",
                               Tissue == "BM44" ~ "MSBB-BM44"))
  #colnames(overall)[grep(gene, colnames(overall))] <- "logCPM"
  overall$logCPM <- as.double(overall$logCPM)
  overall$Braak <- as.character(overall$Braak)
  #################plot1: boxplot##############
  region_list <- c("MCBB-Cerebellum", "MCBB-TCX","MSBB-BM10","MSBB-BM22","MSBB-BM36","MSBB-BM44")
  plot_list <- list()

  for (region in region_list){
    plot_list[[region]] <- ggplot(
      data = overall%>% filter(Label == region), aes(x = Braak, y = logCPM))+
      geom_violin(scale = "area",
                  aes(fill = Braak), alpha = 0.8, color = "transparent")+
      geom_boxplot(outlier.shape = NA, fill = "transparent",width = 0.1)+   # NO OUTLIERS
    
      stat_summary(fun = mean, geom = "point", shape = 20, size = 1, color = "black") +
      theme_bw()+
      scale_fill_brewer(palette="Paired")+
      theme(legend.position = "none")+
      ggtitle(region)+
      xlab("Braak Stage")
  }
  ## Combine individual plots
  all <- ggarrange(plotlist=plot_list,ncol = 3, nrow = 2)
  ## Add x-axis title
  all <- annotate_figure(all,
                         top = text_grob(gene_name,hjust = 0.5))
  
  ggsave(path = '/home/nik010/nik010/project/Chen_Lab/1_AMPAD/1_LDS/manuscript/braak', filename = paste0(gene_name,".png"),width = 10, height = 5, device='png', dpi=700)
}

gene_name <- c("ACACA","FASN","GPAM","AGPAT1","LPIN1","DGAT1","PLIN2","ABCA1","ABCA7", #lipid
               "SREBF1","SREBF2",    #lipogenesis
               'PNPLA2','CPT1A','ACAT1','HMGCS1',
               "CDS1", "CDS2", "PLPP1", "PLPP3", "CDIPT", "CEPT1" , "PTDSS1", "PGS1",
               "PRKAA2")      #ketone
gene <- c("ENSG00000278540","ENSG00000169710","ENSG00000119927",
          "ENSG00000204310","ENSG00000134324","ENSG00000185000",
          "ENSG00000147872","ENSG00000165029","ENSG00000064687", # lipid
          "ENSG00000072310","ENSG00000198911", #lipogenesis
          "ENSG00000177666","ENSG00000110090","ENSG00000075239",
          "ENSG00000112972",# ketone
          "ENSG00000163624", "ENSG00000101290","ENSG00000067113", 
          "ENSG00000162407", "ENSG00000103502","ENSG00000134255",
          "ENSG00000156471", "ENSG00000087157",
          "ENSG00000162409")#phospholipids
gene_name <- c("EP300","CREBBP")      #ketone
gene <- c("ENSG00000100393","ENSG00000005339")#phospholipids


for (i in 1: length(gene)){
  print(gene_name[i])
  candidate_genes(gene[i], gene_name[i])
}

