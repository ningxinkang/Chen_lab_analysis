# AMP-AD bulk RNA-seq analysis (DESeq2 pipeline) from MSBB-Anterior prefrontal cortex (BM10)

## 1. Dataset

| sample type | Female | Male | Sum |
| ----------- | ------ | ---- | --- |
| AD          | 265     | 125   | 390  |
| Control     | 89     | 96   | 185  |
| Sum         | 354     | 221   | 575 |

| sample type | APOE\_carrier | no\_carrier | Sum |
| ----------- | ------------- | ----------- | --- |
| Female      | 75            | 279      | 354 |
| Male        | 37           | 184         | 221 |
| Sum         | 112           | 463        | 575 |

| sample type | APOE\_carrier | no\_carrier | Sum |
| ----------- | ------------- | ----------- | --- |
| AD          | 90            | 300          | 390  |
| Control     | 22            | 163          | 185  |
| Sum         | 112            | 463         | 575 |

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
This analysis was done using all the samples: 82 samples are AD, 77 samples are Control.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM10:%20AD%20vs.%20Control_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM10:%20AD%20vs.%20Control_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM10:%20AD%20vs.%20Control.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ [GO enrichment analysis on up-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM10:%20AD%20vs.%20Control_up_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ [GO enrichment analysis on down-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM10:%20AD%20vs.%20Control_down_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC < -0.25`.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM10:%20AD%20vs.%20Control_GSEA.png)
#### 3.1.2 Sex (F vs. M)
This analysis was done using all the samples: 85 samples are Female, 74 samples are Male.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM10:%20F%20vs.%20M_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM10:%20F%20vs.%20M_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM10:%20F%20vs.%20M.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ [GO enrichment analysis on up-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM10:%20F%20vs.%20M_up_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ [GO enrichment analysis on down-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM10:%20F%20vs.%20M_down_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC < -0.25`.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM10:%20F%20vs.%20M_GSEA.png)
#### 3.1.3 ApoE_carrier (carrier vs. no_carrier)
This analysis was done using all the samples: 53 samples are APOE4 carriers, 106 samples are not APOE4 carriers.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM10:%20carrier%20vs.%20no_carrier_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM10:%20carrier%20vs.%20no_carrier_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM10:%20carrier%20vs.%20no_carrier.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ Not enough up-regulated DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ [GO enrichment analysis on down-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM10:%20carrier%20vs.%20no_carrier_down_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC < -0.25`.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM10:%20carrier%20vs.%20no_carrier_GSEA.png)
### 3.2 On AD samples
#### 3.2.1 Sex (F vs. M)
This analysis was done using AD samples: 48 samples are AD, 34 samples are Control.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM10:%20F%20vs.%20M_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM10:%20F%20vs.%20M_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM10:%20F%20vs.%20M.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ [GO enrichment analysis on up-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM10:%20F%20vs.%20M_up_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ [GO enrichment analysis on down-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM10:%20F%20vs.%20M_down_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC < -0.25`.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM10:%20F%20vs.%20M_GSEA.png)
#### 3.2.2 ApoE_carrier (carrier vs. no_carrier)
This analysis was done using AD samples: 43 samples are ApoE_carrier, 39 samples are not ApoE_carrier.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM10:%20carrier%20vs.%20no_carrier_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM10:%20carrier%20vs.%20no_carrier_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM10:%20carrier%20vs.%20no_carrier.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ [GO enrichment analysis on up-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM10:%20carrier%20vs.%20no_carrier_up_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ [GO enrichment analysis on down-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM10:%20carrier%20vs.%20no_carrier_down_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC < -0.25`.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM10:%20carrier%20vs.%20no_carrier_GSEA.png)
### 3.3 On Control samples
#### 3.3.1 Sex (F vs. M)
This analysis was done using AD samples: 37 samples are AD, 40 samples are Control.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MSBB_BM10:%20F%20vs.%20M_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MSBB_BM10:%20F%20vs.%20M_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MSBB_BM10:%20F%20vs.%20M.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ Not enough upregulated DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ [GO enrichment analysis on down-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MSBB_BM10:%20F%20vs.%20M_down_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC < -0.25`.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM10:%20F%20vs.%20M_GSEA.png)
#### 3.3.2 ApoE_carrier (carrier vs. no_carrier)
This analysis was done using AD samples: 10 samples are ApoE_carrier, 67 samples are not ApoE_carrier.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MSBB_BM10:%20carrier%20vs.%20no_carrier_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MSBB_BM10:%20carrier%20vs.%20no_carrier_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MSBB_BM10:%20carrier%20vs.%20no_carrier.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ Not enough upregulated and downregulated DE genes.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MSBB_BM10:%20carrier%20vs.%20no_carrier_GSEA.png)

