# AMP-AD bulk RNA-seq analysis (DESeq2 pipeline) from MSBB-parahippocampal gyrus (BM36)

## 1. Dataset

| sample type | Female | Male | Sum |
| ----------- | ------ | ---- | --- |
| AD          | 48     | 34   | 82  |
| Control     | 37     | 40   | 77  |
| Sum         | 85     | 74   | 159 |

| sample type | APOE\_carrier | no\_carrier | Sum |
| ----------- | ------------- | ----------- | --- |
| Female      | 35            | 50          | 85  |
| Male        | 18            | 56          | 74  |
| Sum         | 53            | 106         | 159 |

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
This analysis was done using all the samples: 82 samples are AD, 77 samples are Control.
| gene\_id        | log2FoldChange | AveExpr    | t           | pvalue     | padj       | B           | gene\_symbol |
| --------------- | -------------- | ---------- | ----------- | ---------- | ---------- | ----------- | ------------ |
| ENSG00000134324 | 0.19068209     | 6.97282936 | 8.66997849  | 1.14E-16   | 2.19E-13   | 27.2287714  | LPIN1        |
| ENSG00000165029 | 0.41698926     | 6.38275749 | 7.17639423  | 3.58E-12   | 5.69E-10   | 17.1521312  | ABCA1        |
| ENSG00000119927 | 0.18759163     | 6.1387974  | 4.09097265  | 5.21E-05   | 0.00030981 | 1.32142514  | GPAM         |
| ENSG00000110090 | 0.19348698     | 5.48011614 | 3.79925296  | 0.00016806 | 0.00081512 | 0.235195    | CPT1A        |
| ENSG00000112972 | \-0.2668924    | 6.65848966 | \-3.688627  | 0.00025714 | 0.00115645 | \-0.1677597 | HMGCS1       |
| ENSG00000147872 | 0.23936458     | 3.59779573 | 2.92030396  | 0.00369793 | 0.01075381 | \-2.4852272 | PLIN2        |
| ENSG00000075239 | \-0.0985091    | 5.78662211 | \-2.4030639 | 0.01671994 | 0.03816964 | \-3.9512796 | ACAT1        |
| ENSG00000177666 | 0.16453742     | 3.76490474 | 2.3100313   | 0.02140259 | 0.04674539 | \-4.0501779 | PNPLA2       |
| ENSG00000278540 | \-0.058749     | 7.76673825 | \-1.8922971 | 0.0591844  | 0.10876018 | \-5.0065481 | ACACA        |
| ENSG00000072310 | 0.10144144     | 6.06929476 | 1.16266841  | 0.24566792 | 0.34567162 | \-6.1231304 | SREBF1       |
| ENSG00000185000 | 0.05963729     | 4.05938323 | 1.03677956  | 0.3004746  | 0.40490694 | \-6.1713685 | DGAT1        |
| ENSG00000064687 | 0.08495441     | 4.04403847 | 1.03234489  | 0.30254395 | 0.40723894 | \-6.1815851 | ABCA7        |
| ENSG00000198911 | \-0.0279199    | 7.8589587  | \-0.4819332 | 0.63012103 | 0.71415945 | \-6.6535684 | SREBF2       |
| ENSG00000204310 | 0.01074232     | 3.86184724 | 0.13867514  | 0.88977772 | 0.91941945 | \-6.6538179 | AGPAT1       |
| ENSG00000169710 | 0.0050265      | 7.97792816 | 0.06196064  | 0.9506256  | 0.96467105 | \-6.7624102 | FASN         |
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20AD%20vs.%20Control.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ [Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20AD%20vs.%20Control_vocano.png)
+ [GO enrichment analysis on up-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20AD%20vs.%20Control_up_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ [GO enrichment analysis on down-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20AD%20vs.%20Control_down_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC < -0.25`.
#### 3.1.2 Sex (F vs. M)
This analysis was done using all the samples: 85 samples are Female, 74 samples are Male.
| gene\_id        | log2FoldChange | AveExpr    | t           | pvalue     | padj       | B           | gene\_symbol |
| --------------- | -------------- | ---------- | ----------- | ---------- | ---------- | ----------- | ------------ |
| ENSG00000165029 | \-0.1693936    | 6.38275749 | \-2.9867439 | 0.0029959  | 0.09974548 | \-2.3137491 | ABCA1        |
| ENSG00000112972 | 0.20788375     | 6.65848966 | 2.94579539  | 0.00341251 | 0.10434875 | \-2.4295538 | HMGCS1       |
| ENSG00000075239 | 0.07766764     | 5.78662211 | 1.93886671  | 0.05323143 | 0.30055596 | \-4.8165082 | ACAT1        |
| ENSG00000110090 | 0.08831488     | 5.48011614 | 1.77275309  | 0.07704235 | 0.34434955 | \-5.107705  | CPT1A        |
| ENSG00000147872 | 0.13433569     | 3.59779573 | 1.67229191  | 0.09526078 | 0.37820173 | \-5.1472961 | PLIN2        |
| ENSG00000134324 | 0.0167477      | 6.97282936 | 0.78031995  | 0.43567119 | 0.72976157 | \-6.3579576 | LPIN1        |
| ENSG00000278540 | 0.01834691     | 7.76673825 | 0.6059418   | 0.54490238 | 0.80564447 | \-6.4640852 | ACACA        |
| ENSG00000064687 | 0.04563205     | 4.04403847 | 0.56702701  | 0.57101878 | 0.82082473 | \-6.4215621 | ABCA7        |
| ENSG00000119927 | 0.02302977     | 6.1387974  | 0.5143495   | 0.60729609 | 0.83911386 | \-6.5336952 | GPAM         |
| ENSG00000169710 | 0.0332962      | 7.97792816 | 0.4206255   | 0.67425794 | 0.8754155  | \-6.5514145 | FASN         |
| ENSG00000204310 | \-0.0265965    | 3.86184724 | \-0.3489019 | 0.72734936 | 0.89923855 | \-6.4699945 | AGPAT1       |
| ENSG00000072310 | \-0.0289799    | 6.06929476 | \-0.3402606 | 0.73384162 | 0.90233609 | \-6.6078844 | SREBF1       |
| ENSG00000198911 | 0.00672512     | 7.8589587  | 0.11901959  | 0.9053205  | 0.96668127 | \-6.6361776 | SREBF2       |
| ENSG00000185000 | \-0.0044383    | 4.05938323 | \-0.078778  | 0.93724917 | 0.97927057 | \-6.5692697 | DGAT1        |
| ENSG00000177666 | \-0.0012682    | 3.76490474 | \-0.0181628 | 0.98551821 | 0.99549675 | \-6.5345155 | PNPLA2       |
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20F%20vs.%20M.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ [Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20F%20vs.%20M_vocano.png)
+ [GO enrichment analysis on up-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20F%20vs.%20M_up_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ [GO enrichment analysis on down-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20F%20vs.%20M_down_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC < -0.25`.
#### 3.1.3 ApoE_carrier (carrier vs. no_carrier)
This analysis was done using all the samples: 53 samples are APOE4 carriers, 106 samples are not APOE4 carriers.

### 3.2 On AD samples

#### 3.2.1 Sex (F vs. M)

#### 3.2.2 ApoE_carrier (carrier vs. no_carrier)

### 3.3 On Control samples

#### 3.3.1 Sex (F vs. M)

#### 3.3.2 ApoE_carrier (carrier vs. no_carrier)
