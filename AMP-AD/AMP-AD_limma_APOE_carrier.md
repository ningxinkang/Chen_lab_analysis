# AMP-AD bulk RNA-seq DE analysis APOE carrier (limma pipeline)

## 1. Dataset info
The analysis is done using bulk RNA-seq from project AMP-AD. There are 3 studies involved and 7 cohorts in total. For each cohort, I got RNA expression for a total of 60675 genes. For quality control filtering, I applied a filter to remove genes that have less than 1 RPM (reads per million) counts in at least 50% of samples per tissue. The number of genes after quality control filtering is listed in the table below.

| Study                         | Cohort      | Brain Region                         | APOE4\_carrier | no\_APOE4\_carrier | \# filtered genes |
| ----------------------------- | ----------- | ------------------------------------ | -------------- | ------------------ | ----------------- |
| Mayo Clinic Brain Bank (MCBB) | MCBB\_CBE   | Cerebellum                           | 53             | 106                | 16862             |
| Mayo Clinic Brain Bank (MCBB) | MCBB\_TCX   | Temporal cortex                      | 52             | 108                | 16489             |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM10  | Anterior prefrontal cortex (BM10)    | 52             | 133                | 19919             |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM22  | Superior temporal gyrus (BM22)       | 34             | 148                | 19565             |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM36  | Parahippocampal gyrus (BM36)         | 24             | 160                | 19893             |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM44  | Inferior frontal gyrus (BM44)        | 30             | 129                | 18647             |
| ROSMAP                        | ROSMAP\_DPC | Dorsolateral prefrontal cortex (DPC) | 73             | 168                | 16941             |

## 2. Method
I use the limma package in R for comprehensive DE analysis, adjusted p-value calculated after the Benjamini-Hochberg procedure. Genes with adjusted p-value < 0.05 AND absolute log2FC > 0.25 are considered DEGs.

## 3. Results
**Please note: if you fail to find the corresponding GO result in the folder I given, that means there isn't enrich GO terms found.**
### 3.1 All sample
+ Spreadsheet of DE analysis result for [all the genes](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_all/DE_overall/APOE_carrier)
+ Spreadsheet of DE analysis result for [candidate genes](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_all/candidate/APOE_carrier)
+ [Vocano plot](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_all/vocano_plot/APOE_carrier)
+ [GO result](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_all/up_GO/APOE_carrier) using up-regulated DEGs
+ [GO result](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_all/down_GO/APOE_carrier) using down-regulated DEGs
+ [GSEA result](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_all/GSEA/APOE_carrier)
### 3.2 Female sample
| Study                         | Cohort      | Brain Region                         | APOE4\_carrier | no\_APOE4\_carrier |
| ----------------------------- | ----------- | ------------------------------------ | -------------- | ------------------ |
| Mayo Clinic Brain Bank (MCBB) | MCBB\_CBE   | Cerebellum                           | 35             | 50                 |
| Mayo Clinic Brain Bank (MCBB) | MCBB\_TCX   | Temporal cortex                      | 33             | 53                 |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM10  | Anterior prefrontal cortex (BM10)    | 23             | 85                 |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM22  | Superior temporal gyrus (BM22)       | 22             | 91                 |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM36  | Parahippocampal gyrus (BM36)         | 16             | 98                 |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM44  | Inferior frontal gyrus (BM44)        | 19             | 79                 |
| ROSMAP                        | ROSMAP\_DPC | Dorsolateral prefrontal cortex (DPC) | 46             | 110                |

+ Spreadsheet of DE analysis result for [all the genes](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_F/DE_overall/APOE_carrier)
+ Spreadsheet of DE analysis result for [candidate genes](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_F/candidate/APOE_carrier)
+ [Vocano plot](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_F/vocano_plot/APOE_carrier)
+ [GO result](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_F/up_GO/APOE_carrier) using up-regulated DEGs
+ [GO result](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_F/down_GO/APOE_carrier) using down-regulated DEGs
+ [GSEA result](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_F/GSEA/APOE_carrier)

### 3.3 Male sample
| Study                         | Cohort      | Brain Region                         | APOE4\_carrier | no\_APOE4\_carrier |
| ----------------------------- | ----------- | ------------------------------------ | -------------- | ------------------ |
| Mayo Clinic Brain Bank (MCBB) | MCBB\_CBE   | Cerebellum                           | 35             | 18                 |
| Mayo Clinic Brain Bank (MCBB) | MCBB\_TCX   | Temporal cortex                      | 33             | 19                 |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM10  | Anterior prefrontal cortex (BM10)    | 23             | 9                  |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM22  | Superior temporal gyrus (BM22)       | 22             | 12                 |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM36  | Parahippocampal gyrus (BM36)         | 16             | 8                  |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM44  | Inferior frontal gyrus (BM44)        | 19             | 11                 |
| ROSMAP                        | ROSMAP\_DPC | Dorsolateral prefrontal cortex (DPC) | 46             | 27                 |

+ Spreadsheet of DE analysis result for [all the genes](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_M/DE_overall/APOE_carrier)
+ Spreadsheet of DE analysis result for [candidate genes](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_M/candidate/APOE_carrier)
+ [Vocano plot](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_M/vocano_plot/APOE_carrier)
+ [GO result](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_M/up_GO/APOE_carrier) using up-regulated DEGs
+ [GO result](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_M/down_GO/APOE_carrier) using down-regulated DEGs
+ [GSEA result](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_M/GSEA/APOE_carrier)
