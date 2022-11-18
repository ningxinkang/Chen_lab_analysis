# AMP-AD bulk RNA-seq analysis (DESeq2 pipeline) from MCBB-Cerebellum

## 1. Dataset

| sample type | Female | Male | Sum |
| ----------- | ------ | ---- | --- |
| AD          | 48     | 34   | 82  |
| Control     | 37     | 40   | 77  |
| Sum         | 85     | 74   | 159 |

| sample type | APOE\_carrier | no\_carrier | Sum |
| ----------- | ------------- | ----------- | --- |
| Female      | 35            | 50      | 85 |
| Male        | 18           | 56         | 74 |
| Sum         | 53           | 106        | 159 |

| sample type | APOE\_carrier | no\_carrier | Sum |
| ----------- | ------------- | ----------- | --- |
| AD          | 43            | 39          | 82  |
| Control     | 10            | 67          | 77  |
| Sum         | 53            | 106         | 159 |

## 2. Plan

I aim to perform DE analysis according to three features using **limma pipeline**, as follows:

-   On all samples:

    -   Diagnosis (AD vs. Control)

    -   Sex (F vs. M)

    -   ApoE_carrier (carrier vs. no_carrier)

-   On AD samples:

    -   Sex (F vs. M)

    -   ApoE_carrier (carrier vs. no_carrier)

-   On AD samples:

    -   Sex (F vs. M)

    -   ApoE_carrier (carrier vs. no_carrier)

## 3. Result

### 3.1 On all samples

#### 3.1.1 Diagnosis (AD vs. Control)
This analysis was done using all the samples: 155 samples are AD, 86 samples are Control.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MCBB_Cerebellum:%20AD%20vs.%20Control_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MCBB_Cerebellum:%20AD%20vs.%20Control_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MCBB_Cerebellum:%20AD%20vs.%20Control.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ [GO enrichment analysis on up-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MCBB_Cerebellum:%20AD%20vs.%20Control_up_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ [GO enrichment analysis on down-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MCBB_Cerebellum:%20AD%20vs.%20Control_down_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC < -0.25`.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MCBB_Cerebellum:%20AD%20vs.%20Control_GSEA.png)
#### 3.1.2 Sex (F vs. M)
This analysis was done using all the samples: 156 samples are Female, 85 samples are Male.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MCBB_Cerebellum:%20F%20vs.%20M_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MCBB_Cerebellum:%20F%20vs.%20M_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MCBB_Cerebellum:%20F%20vs.%20M.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ [GO enrichment analysis on up-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MCBB_Cerebellum:%20F%20vs.%20M_up_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ [GO enrichment analysis on down-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MCBB_Cerebellum:%20F%20vs.%20M_down_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC < -0.25`.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MCBB_Cerebellum:%20F%20vs.%20M_GSEA.png)
#### 3.1.3 ApoE_carrier (carrier vs. no_carrier)
This analysis was done using all the samples: 73 samples are APOE4 carriers, 168 samples are not APOE4 carriers.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MCBB_Cerebellum:%20carrier%20vs.%20no_carrier_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MCBB_Cerebellum:%20carrier%20vs.%20no_carrier_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MCBB_Cerebellum:%20carrier%20vs.%20no_carrier.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ No enriched GO terms find using up-/down-regulated genes.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MCBB_Cerebellum:%20carrier%20vs.%20no_carrier_GSEA.png)
### 3.2 On AD samples
#### 3.2.1 Sex (F vs. M)
This analysis was done using AD samples: 109 samples are female, 46 samples are male.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MCBB_Cerebellum:%20F%20vs.%20M_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MCBB_Cerebellum:%20F%20vs.%20M_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MCBB_Cerebellum:%20F%20vs.%20M.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ [GO enrichment analysis on up-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MCBB_Cerebellum:%20F%20vs.%20M_up_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ No enriched GO terms found using down-regulated DE genes `adj.p < 0.05` and `log2FC < -0.25`.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MCBB_Cerebellum:%20F%20vs.%20M_GSEA.png)
#### 3.2.2 ApoE_carrier (carrier vs. no_carrier)
This analysis was done using AD samples: 64 samples are ApoE_carrier, 91 samples are not ApoE_carrier.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MCBB_Cerebellum:%20carrier%20vs.%20no_carrier_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MCBB_Cerebellum:%20carrier%20vs.%20no_carrier_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MCBB_Cerebellum:%20carrier%20vs.%20no_carrier.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ No enriched GO terms find using up-/down-regulated genes.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MCBB_Cerebellum:%20carrier%20vs.%20no_carrier_GSEA.png)
### 3.3 On Control samples
#### 3.3.1 Sex (F vs. M)
This analysis was done using Control samples: 47 samples are Female, 39 samples are male.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MCBB_Cerebellum:%20F%20vs.%20M_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MCBB_Cerebellum:%20F%20vs.%20M_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MCBB_Cerebellum:%20F%20vs.%20M.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ [GO enrichment analysis on up-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MCBB_Cerebellum:%20F%20vs.%20M_up_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ No enriched GO terms found using down regulated DE genes `adj.p < 0.05` and `log2FC < -0.25`.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MCBB_Cerebellum:%20F%20vs.%20M_GSEA.png)
#### 3.3.2 ApoE_carrier (carrier vs. no_carrier)
This analysis was done using Control samples: 9 samples are ApoE_carrier, 77 samples are not ApoE_carrier.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MCBB_Cerebellum:%20carrier%20vs.%20no_carrier_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MCBB_Cerebellum:%20carrier%20vs.%20no_carrier_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MCBB_Cerebellum:%20carrier%20vs.%20no_carrier.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ No enriched GO terms find using up-/down-regulated genes.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MCBB_Cerebellum:%20carrier%20vs.%20no_carrier_GSEA.png)
