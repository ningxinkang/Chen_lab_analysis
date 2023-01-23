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



candidate_genes <- function(gene,gene_name){
  limma_result <- data.frame(matrix(ncol=4,nrow=0, dimnames=list(NULL, c("ensembl","log2FoldChange","padj","cohort"))))
  cohort <- c("MCBB_Temporal cortex", "MCBB_Cerebellum", "MSBB_BM10", "MSBB_BM22", "MSBB_BM36","MSBB_BM44")
  for (x in 1:length(cohort)){
    limma <- read.csv(paste0("/home/nik010/nik010/project/Chen_Lab/1_AMPAD/1_LDS/output/limma/all/braak/",cohort[x],": AD vs. Control.csv")) %>% 
      dplyr::filter(gene_id %in% gene)  %>%
      dplyr::select("gene_id","log2FoldChange","padj")
    limma$cohort <- cohort[x]
    colnames(limma)[1] <- "ensembl"
    limma_result <- rbind(limma_result,limma)
  }
  
  limma_result <- limma_result %>% 
    mutate(Label =case_when (cohort == "ROSMAP_Dorsolateral prefrontal cortex" ~ "ROSMAP-DPC",
                             cohort == "MCBB_Cerebellum" ~ "MCBB-Cerebellum",
                             cohort == "MCBB_Temporal cortex" ~ "MCBB-TCX",
                             cohort == "MSBB_BM10" ~ "MSBB-BM10",
                             cohort == "MSBB_BM22" ~ "MSBB-BM22",
                             cohort == "MSBB_BM36" ~ "MSBB-BM36",
                             cohort == "MSBB_BM44" ~ "MSBB-BM44"))
  limma_result$padj <- as.double(limma_result$padj)
  limma_result <- merge(limma_result,gene_anno, by = "ensembl", all.x = T)
  limma_result <- limma_result %>% 
    mutate(star = case_when(padj < 0.001 ~ "***",
                            padj < 0.01 ~ "**",
                            padj < 0.05 ~ "*"))
  limma_result$Diagnosis <- "Control"
  limma_result <- limma_result %>% column_to_rownames("Label")

  
  ###############heatmap#############
  heatmap <- ggplot(data =limma_result, mapping = aes(x = Label,
                                                  y = name,
                                                  fill = log2FoldChange)) +
    geom_tile(color = "black") +
    scale_fill_gradient2(low = "#075AFF",
                         mid = "#FFFFCC",
                         high = "#FF0000") +
    #geom_text(aes(label = log2FoldChange), color = "white", size = 4)+
    theme(axis.title.y = element_blank(),
          axis.text.x = element_text(angle = 45, vjust = 0.5))
  
  heatmap
  
  ggsave('/home/nik010/nik010/project/Chen_Lab/1_AMPAD/1_LDS/manuscript/heatmap/log2FC.png',width = 10, height = 10, device='png', dpi=700)
}

gene_name <- c("ACACA","FASN","GPAM","AGPAT1","LPIN1","DGAT1","PLIN2","ABCA1","ABCA7", #lipid
               "SREBF1","SREBF2",    #lipogenesis
               'PNPLA2','CPT1A','ACAT1','HMGCS1',
               "CDS1", "CDS2", "PLPP1", "PLPP3", "CDIPT", "CEPT1" , "PTDSS1", "PGS1",
               "PRKAA2", "EP300","CREBBP")      #ketone
gene <- c("ENSG00000278540","ENSG00000169710","ENSG00000119927",
          "ENSG00000204310","ENSG00000134324","ENSG00000185000",
          "ENSG00000147872","ENSG00000165029","ENSG00000064687", # lipid
          "ENSG00000072310","ENSG00000198911", #lipogenesis
          "ENSG00000177666","ENSG00000110090","ENSG00000075239",
          "ENSG00000112972",# ketone
          "ENSG00000163624", "ENSG00000101290","ENSG00000067113", 
          "ENSG00000162407", "ENSG00000103502","ENSG00000134255",
          "ENSG00000156471", "ENSG00000087157",
          "ENSG00000162409", "ENSG00000100393","ENSG00000005339")#phospholipids

gene_anno <- data.frame(matrix(ncol=2,nrow=26, dimnames=list(NULL, c("ensembl","name"))))
for (i in 1:length(gene)){
  gene_anno[i,1] <- gene[i]
  gene_anno[i,2] <- gene_name[i]
}



for (i in 1: length(gene)){
  print(gene_name[i])
  candidate_genes(gene[i], gene_name[i])
}
























































