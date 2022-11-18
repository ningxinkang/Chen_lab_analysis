# AMP-AD bulk RNA-seq analysis (DESeq2 pipeline) from MCBB-Temporal cortex

## 1. Dataset

| sample type | Female | Male | Sum |
| ----------- | ------ | ---- | --- |
| AD          | 49     | 33   | 82  |
| Control     | 37     | 41   | 78  |
| Sum         | 86    | 74   | 160 |

| sample type | APOE\_carrier | no\_carrier | Sum |
| ----------- | ------------- | ----------- | --- |
| Female      | 33            | 53      | 86 |
| Male        | 19           | 55         | 74 |
| Sum         | 52           | 108        | 160 |

| sample type | APOE\_carrier | no\_carrier | Sum |
| ----------- | ------------- | ----------- | --- |
| AD          | 43            | 39          | 82  |
| Control     | 9            | 69          | 78  |
| Sum         | 52            | 108         | 160 |

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
This analysis was done using all the samples: 82 samples are AD, 78 samples are Control.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MCBB_Temporal%20cortex:%20AD%20vs.%20Control_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MCBB_Temporal%20cortex:%20AD%20vs.%20Control_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MCBB_Temporal%20cortex:%20AD%20vs.%20Control.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ No enriched term found using up-/down-regulated genes.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MCBB_Temporal%20cortex:%20AD%20vs.%20Control_GSEA.png)
#### 3.1.2 Sex (F vs. M)
This analysis was done using all the samples: 86 samples are Female, 74 samples are Male.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MCBB_Temporal%20cortex:%20F%20vs.%20M_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MCBB_Temporal%20cortex:%20F%20vs.%20M_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MCBB_Temporal%20cortex:%20F%20vs.%20M.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ No enriched term found using up-/down-regulated genes.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MCBB_Temporal%20cortex:%20F%20vs.%20M_GSEA.png)
#### 3.1.3 ApoE_carrier (carrier vs. no_carrier)
This analysis was done using all the samples: 52 samples are APOE4 carriers, 108 samples are not APOE4 carriers.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MCBB_Temporal%20cortex:%20carrier%20vs.%20no_carrier_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MCBB_Temporal%20cortex:%20carrier%20vs.%20no_carrier_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MCBB_Temporal%20cortex:%20carrier%20vs.%20no_carrier.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ No enriched term found using up-/down-regulated genes.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_all/MCBB_Temporal%20cortex:%20carrier%20vs.%20no_carrier_GSEA.png)
### 3.2 On AD samples
#### 3.2.1 Sex (F vs. M)
This analysis was done using AD samples: 49 samples are female, 3 samples are male.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_AD/MCBB_Temporal%20cortex:%20F%20vs.%20M_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_AD/MCBB_Temporal%20cortex:%20F%20vs.%20M_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_AD/MCBB_Temporal%20cortex:%20F%20vs.%20M.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ No enriched term found using up-/down-regulated genes.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_AD/MCBB_Temporal%20cortex:%20F%20vs.%20M_GSEA.png)
#### 3.2.2 ApoE_carrier (carrier vs. no_carrier)
This analysis was done using AD samples: 43 samples are ApoE_carrier, 39 samples are not ApoE_carrier.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_AD/MCBB_Temporal%20cortex:%20carrier%20vs.%20no_carrier_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_AD/MCBB_Temporal%20cortex:%20carrier%20vs.%20no_carrier_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_AD/MCBB_Temporal%20cortex:%20carrier%20vs.%20no_carrier.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ No enriched term found using up-/down-regulated genes.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_AD/MCBB_Temporal%20cortex:%20carrier%20vs.%20no_carrier_GSEA.png)
### 3.3 On Control samples
#### 3.3.1 Sex (F vs. M)
This analysis was done using Control samples: 37 samples are Female, 41 samples are male.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_Control/MCBB_Temporal%20cortex:%20F%20vs.%20M_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_Control/MCBB_Temporal%20cortex:%20F%20vs.%20M_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_Control/MCBB_Temporal%20cortex:%20F%20vs.%20M.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ No enriched term found using up-/down-regulated genes.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_AD/MCBB_Temporal%20cortex:%20F%20vs.%20M_GSEA.png)
#### 3.3.2 ApoE_carrier (carrier vs. no_carrier)
This analysis was done using Control samples: 9 samples are ApoE_carrier, 69 samples are not ApoE_carrier.

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_Control/MCBB_Temporal%20cortex:%20carrier%20vs.%20no_carrier_vocano.png)
+ [DE analysis out of candidate gene list](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_Control/MCBB_Temporal%20cortex:%20carrier%20vs.%20no_carrier_candidates.csv)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_Control/MCBB_Temporal%20cortex:%20carrier%20vs.%20no_carrier.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ No enriched term found using up-/down-regulated genes.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_DESeq2_Control/MCBB_Temporal%20cortex:%20carrier%20vs.%20no_carrier_GSEA.png)
