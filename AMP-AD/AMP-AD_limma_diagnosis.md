# AMP-AD bulk RNA-seq DE analysis AD vs. control (limma pipeline)

## Dataset info
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
