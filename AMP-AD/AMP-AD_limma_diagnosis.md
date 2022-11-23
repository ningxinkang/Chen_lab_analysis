# AMP-AD bulk RNA-seq DE analysis AD vs. control (limma pipeline)

## 1. Dataset info
The analysis is done using bulk RNA-seq from project AMP-AD. There are 3 studies involved and 7 cohorts in total. For each cohort, I got RNA expression for a total of 60675 genes. For quality control filtering, I applied a filter to remove genes that have less than 1 RPM (reads per million) counts in at least 50% of samples per tissue. The number of genes after quality control filtering is listed in the table below.

| Study                  | Cohort                         | Brain Region                         | \# AD | \# Control | \# filtered genes |
| ---------------------- | ------------------------------ | ------------------------------------ | ----- | ---------- | ----------------- |
| Mayo Clinic Brain Bank (MCBB) | MCBB\_CBE                      | Cerebellum                           | 82    | 77         | 16862             |
| Mayo Clinic Brain Bank (MCBB)|MCBB\_TCX              | Temporal cortex                | 82                                   | 78    | 16489      |
| Mount Sinai brain Bank (MSBB)| MSBB\_BM10                     | Anterior prefrontal cortex (BM10)    | 113   | 52         | 19919             |
| Mount Sinai brain Bank (MSBB)|MSBB\_BM22             | Superior temporal gyrus (BM22) | 134                                  | 48    | 19565      |
| Mount Sinai brain Bank (MSBB)|MSBB\_BM36             | Parahippocampal gyrus (BM36)   | 111                                  | 50    | 19893      |
| Mount Sinai brain Bank (MSBB)|MSBB\_BM44             | Inferior frontal gyrus (BM44)  | 106                                  | 53    | 18647      |
| ROSMAP                 | ROSMAP\_DPC                    | Dorsolateral prefrontal cortex (DPC) | 155   | 86         | 16941             |

## 2. Method
I use the limma package in R for comprehensive DE analysis, adjusted p-value calculated after the Benjamini-Hochberg procedure. Genes with adjusted p-value < 0.05 AND absolute log2FC > 0.25 are considered DEGs.

## 3. Result
### 3.1 All sample
+ Spreadsheet of DE analysis result for [all the genes](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_all/DE_overall/Diagnosis)
+ Spreadsheet of DE analysis result for [candidate genes](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_all/candidate/Diagnosis)
+ [Vocano plot](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_all/vocano_plot/Diagnosis)
+ [GO result](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_all/up_GO/Diagnosis) using up-regulated DEGs
+ [GO result](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_all/down_GO/Diagnosis) using down-regulated DEGs
+ [GSEA result](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_all/GSEA/Diagnosis)
### 3.2 Female sample
| Study                         | Cohort      | Brain Region                         | \# AD | \# Control |
| ----------------------------- | ----------- | ------------------------------------ | ----- | ---------- |
| Mayo Clinic Brain Bank (MCBB) | MCBB\_CBE   | Cerebellum                           | 48    | 37         |
| Mayo Clinic Brain Bank (MCBB) | MCBB\_TCX   | Temporal cortex                      | 49    | 37         |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM10  | Anterior prefrontal cortex (BM10)    | 78    | 30         |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM22  | Superior temporal gyrus (BM22)       | 87    | 26         |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM36  | Parahippocampal gyrus (BM36)         | 84    | 30         |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM44  | Inferior frontal gyrus (BM44)        | 73    | 25         |
| ROSMAP                        | ROSMAP\_DPC | Dorsolateral prefrontal cortex (DPC) | 109   | 47         |

+ Spreadsheet of DE analysis result for [all the genes](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_F/DE_overall/Diagnosis)
+ Spreadsheet of DE analysis result for [candidate genes](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_F/candidate/Diagnosis)
+ [Vocano plot](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_F/vocano_plot/Diagnosis)
+ [GO result](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_F/up_GO/Diagnosis) using up-regulated DEGs
+ [GO result](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_F/down_GO/Diagnosis) using down-regulated DEGs
+ [GSEA result](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_F/GSEA/Diagnosis)

### 3.3 Male sample
| Study                         | Cohort      | Brain Region                         | \# AD | \# Control |
| ----------------------------- | ----------- | ------------------------------------ | ----- | ---------- |
| Mayo Clinic Brain Bank (MCBB) | MCBB\_CBE   | Cerebellum                           | 34    | 40         |
| Mayo Clinic Brain Bank (MCBB) | MCBB\_TCX   | Temporal cortex                      | 33    | 41         |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM10  | Anterior prefrontal cortex (BM10)    | 35    | 22         |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM22  | Superior temporal gyrus (BM22)       | 47    | 22         |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM36  | Parahippocampal gyrus (BM36)         | 43    | 27         |
| Mount Sinai brain Bank (MSBB) | MSBB\_BM44  | Inferior frontal gyrus (BM44)        | 33    | 28         |
| ROSMAP                        | ROSMAP\_DPC | Dorsolateral prefrontal cortex (DPC) | 46    | 39         |

+ Spreadsheet of DE analysis result for [all the genes](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_M/DE_overall/Diagnosis)
+ Spreadsheet of DE analysis result for [candidate genes](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_M/candidate/Diagnosis)
+ [Vocano plot](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_M/vocano_plot/Diagnosis)
+ [GO result](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_M/up_GO/Diagnosis) using up-regulated DEGs
+ [GO result](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_M/down_GO/Diagnosis) using down-regulated DEGs
+ [GSEA result](https://github.com/ningxinkang/Chen_lab_analysis/tree/main/AMP-AD_limma_M/GSEA/Diagnosis)


