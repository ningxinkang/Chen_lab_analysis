# AMP-AD bulk RNA-seq analysis (DESeq2 pipeline) from MSBB-parahippocampal gyrus (BM36)

## 1. Dataset

| sample type | Female | Male | Sum |
| ----------- | ------ | ---- | --- |
| AD          | 207    | 82   | 289 |
| Control     | 71     | 84   | 155 |
| Sum         | 278    | 166  | 444 |

| sample type | APOE\_carrier | no\_carrier | Sum |
| ----------- | ------------- | ----------- | --- |
| Female      | 33            | 245         | 278 |
| Male        | 22            | 144         | 166 |
| Sum         | 55            | 389         | 444 |

| sample type | APOE\_carrier | no\_carrier | Sum |
| ----------- | ------------- | ----------- | --- |
| AD          | 41            | 248         | 289 |
| Control     | 14            | 141         | 156 |
| Sum         | 55            | 389         | 444 |

## 2. Plan

I aim to perform DE analysis according to three features using **DESeq2 pipeline**, as follows:

-   On all samples:

    -   Diagnosis (AD vs. Control)

    -   Sex (F vs. M)

    -   ApoE_carrier (carrier vs. no_carrier)

-   On AD samples:

    -   Sex (F vs. M)

    -   ApoE_carrier (carrier vs. no_carrier)

-   On Control samples:

    -   Sex (F vs. M)

    -   ApoE_carrier (carrier vs. no_carrier)

## 3. Result

### 3.1 On all samples

#### 3.1.1 Diagnosis (AD vs. Control)
This analysis was done using all the samples: 289 samples are AD, 155 samples are Control.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MSBB_BM36:%20AD%20vs.%20Control_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MSBB_BM36:%20AD%20vs.%20Control_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MSBB_BM36:%20AD%20vs.%20Control.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ No GO terms found using up-/down-regulated genes.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MSBB_BM36:%20AD%20vs.%20Control_GSEA.png)
#### 3.1.2 Sex (F vs. M)
This analysis was done using all the samples: 278 samples are Female, 166 samples are Male.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MSBB_BM36:%20F%20vs.%20M_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MSBB_BM36:%20F%20vs.%20M_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MSBB_BM36:%20F%20vs.%20M.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ [GO enrichment analysis on up-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MSBB_BM36:%20F%20vs.%20M_up_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ + No GO terms found using down-regulated DE genes `adj.p < 0.05` and `log2FC < -0.25`.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MSBB_BM36:%20F%20vs.%20M_GSEA.png)
#### 3.1.3 ApoE_carrier (carrier vs. no_carrier)
This analysis was done using all the samples: 55 samples are APOE4 carriers, 389 samples are not APOE4 carriers.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MSBB_BM36:%20carrier%20vs.%20no_carrier_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MSBB_BM36:%20carrier%20vs.%20no_carrier_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MSBB_BM36:%20carrier%20vs.%20no_carrier.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ No GO terms found using up-/down-regulated genes.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MSBB_BM36:%20carrier%20vs.%20no_carrier_GSEA.png)
### 3.2 On AD samples
#### 3.2.1 Sex (F vs. M)
This analysis was done using AD samples: 207 samples are Female, 82 samples are Male.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_AD/MSBB_BM36:%20F%20vs.%20M_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_AD/MSBB_BM36:%20F%20vs.%20M_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_AD/MSBB_BM36:%20F%20vs.%20M.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ No GO terms found using up-/down-regulated genes.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_AD/MSBB_BM36:%20F%20vs.%20M_GSEA.png)
#### 3.2.2 ApoE_carrier (carrier vs. no_carrier)
This analysis was done using AD samples: 41 samples are ApoE_carrier, 248 samples are not ApoE_carrier.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_AD/MSBB_BM36:%20carrier%20vs.%20no_carrier_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_AD/MSBB_BM36:%20carrier%20vs.%20no_carrier_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_AD/MSBB_BM36:%20carrier%20vs.%20no_carrier.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ No GO terms found using up-/down-regulated genes.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_AD/MSBB_BM36:%20carrier%20vs.%20no_carrier_GSEA.png)
### 3.3 On Control samples
#### 3.3.1 Sex (F vs. M)
This analysis was done using Control samples: 71 samples are Female, 84 samples are Male.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_Control/MSBB_BM36:%20F%20vs.%20M_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_Control/MSBB_BM36:%20F%20vs.%20M_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_Control/MSBB_BM36:%20F%20vs.%20M.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ No GO terms found using up-regulated DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ [GO enrichment analysis on down-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_Control/MSBB_BM36:%20F%20vs.%20M_down_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC < -0.25`.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_AD/MSBB_BM36:%20F%20vs.%20M_GSEA.png)
#### 3.3.2 ApoE_carrier (carrier vs. no_carrier)
This analysis was done using Control samples: 14 samples are ApoE_carrier, 141 samples are not ApoE_carrier.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_Control/MSBB_BM36:%20carrier%20vs.%20no_carrier_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_Control/MSBB_BM36:%20carrier%20vs.%20no_carrier_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_Control/MSBB_BM36:%20carrier%20vs.%20no_carrier.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ No GO terms found using up-/down-regulated genes.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_Control/MSBB_BM36:%20carrier%20vs.%20no_carrier_GSEA.png)
