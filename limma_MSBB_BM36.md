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

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20AD%20vs.%20Control_vocano.png)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20AD%20vs.%20Control.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ [GO enrichment analysis on up-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20AD%20vs.%20Control_up_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ [GO enrichment analysis on down-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20AD%20vs.%20Control_down_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC < -0.25`.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20AD%20vs.%20Control_GSEA.png)
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

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20F%20vs.%20M_vocano.png)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20F%20vs.%20M.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ [GO enrichment analysis on up-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20F%20vs.%20M_up_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ [GO enrichment analysis on down-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20F%20vs.%20M_down_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC < -0.25`.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20F%20vs.%20M_GSEA.png)
#### 3.1.3 ApoE_carrier (carrier vs. no_carrier)
This analysis was done using all the samples: 53 samples are APOE4 carriers, 106 samples are not APOE4 carriers.
| gene\_id        | log2FoldChange | AveExpr    | t           | pvalue     | padj       | B           | gene\_symbol |
| --------------- | -------------- | ---------- | ----------- | ---------- | ---------- | ----------- | ------------ |
| ENSG00000110090 | \-0.3195179    | 5.48011614 | \-4.5748202 | 6.39E-06   | 0.00164011 | 3.60353095  | CPT1A        |
| ENSG00000119927 | \-0.2642946    | 6.1387974  | \-4.2007864 | 3.29E-05   | 0.00355731 | 2.10405817  | GPAM         |
| ENSG00000204310 | \-0.3452718    | 3.86184724 | \-3.2328486 | 0.00132885 | 0.02386095 | \-1.1622333 | AGPAT1       |
| ENSG00000177666 | \-0.1772404    | 3.76490474 | \-1.814472  | 0.0703656  | 0.22333734 | \-4.4968762 | PNPLA2       |
| ENSG00000134324 | \-0.048034     | 6.97282936 | \-1.5893002 | 0.11279484 | 0.29046032 | \-4.9566768 | LPIN1        |
| ENSG00000075239 | \-0.0810274    | 5.78662211 | \-1.4402611 | 0.1505878  | 0.34200404 | \-5.1775082 | ACAT1        |
| ENSG00000278540 | \-0.0578406    | 7.76673825 | \-1.3554864 | 0.17603928 | 0.37276056 | \-5.272617  | ACACA        |
| ENSG00000147872 | \-0.1512533    | 3.59779573 | \-1.3514749 | 0.17731892 | 0.37406979 | \-5.1724976 | PLIN2        |
| ENSG00000165029 | \-0.1062876    | 6.38275749 | \-1.3325449 | 0.18345147 | 0.38156557 | \-5.3210548 | ABCA1        |
| ENSG00000198911 | \-0.0715956    | 7.8589587  | \-0.898995  | 0.36920448 | 0.56881662 | \-5.7619715 | SREBF2       |
| ENSG00000185000 | \-0.0688368    | 4.05938323 | \-0.8721    | 0.38368502 | 0.58058324 | \-5.7240557 | DGAT1        |
| ENSG00000064687 | 0.06680152     | 4.04403847 | 0.59299281  | 0.55352624 | 0.71528444 | \-5.926073  | ABCA7        |
| ENSG00000112972 | \-0.0537988    | 6.65848966 | \-0.5418246 | 0.58824564 | 0.74035025 | \-6.0283245 | HMGCS1       |
| ENSG00000169710 | 0.05365512     | 7.97792816 | 0.48075476  | 0.6309577  | 0.7722225  | \-6.0332194 | FASN         |
| ENSG00000072310 | 0.02931445     | 6.06929476 | 0.24480794  | 0.80673262 | 0.88548371 | \-6.1433854 | SREBF1       |

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20carrier%20vs.%20no_carrier_vocano.png)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20carrier%20vs.%20no_carrier.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ [GO enrichment analysis on up-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20carrier%20vs.%20no_carrier_up_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ [GO enrichment analysis on down-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20carrier%20vs.%20no_carrier_down_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC < -0.25`.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_all/MSBB_BM36:%20carrier%20vs.%20no_carrier_GSEA.png)
### 3.2 On AD samples
#### 3.2.1 Sex (F vs. M)
This analysis was done using AD samples: 48 samples are AD, 34 samples are Control.
| gene\_id        | log2FoldChange | AveExpr    | t           | pvalue     | padj       | B           | gene\_symbol |
| --------------- | -------------- | ---------- | ----------- | ---------- | ---------- | ----------- | ------------ |
| ENSG00000075239 | 0.11833001     | 5.78327843 | 2.43885137  | 0.01539944 | 0.14487495 | \-3.6456619 | ACAT1        |
| ENSG00000112972 | 0.21364046     | 6.60855688 | 2.27937413  | 0.02345044 | 0.17374767 | \-4.0109728 | HMGCS1       |
| ENSG00000147872 | 0.20427419     | 3.71206784 | 1.89919469  | 0.05863879 | 0.2644686  | \-4.6485395 | PLIN2        |
| ENSG00000165029 | \-0.1491003    | 6.52585122 | \-1.8961918 | 0.05903638 | 0.2649704  | \-4.7855843 | ABCA1        |
| ENSG00000110090 | 0.12048409     | 5.56508052 | 1.84147049  | 0.06668458 | 0.28018537 | \-4.8703927 | CPT1A        |
| ENSG00000134324 | 0.04372398     | 7.05932797 | 1.60972873  | 0.10866295 | 0.35625049 | \-5.2680149 | LPIN1        |
| ENSG00000185000 | \-0.0316662    | 4.08965733 | \-0.4033043 | 0.68705377 | 0.86695361 | \-6.3584796 | DGAT1        |
| ENSG00000072310 | \-0.0405817    | 6.11899456 | \-0.3642239 | 0.71598498 | 0.88120248 | \-6.4759909 | SREBF1       |
| ENSG00000278540 | 0.00930524     | 7.76842183 | 0.23483466  | 0.81452075 | 0.92787048 | \-6.4958534 | ACACA        |
| ENSG00000204310 | \-0.0217355    | 3.87030641 | \-0.2192542 | 0.826623   | 0.93319475 | \-6.3698943 | AGPAT1       |
| ENSG00000119927 | \-0.0133226    | 6.2215515  | \-0.2152619 | 0.82973084 | 0.93451103 | \-6.5178302 | GPAM         |
| ENSG00000169710 | \-0.021943     | 8.00701026 | \-0.2136602 | 0.83097842 | 0.93507496 | \-6.4936082 | FASN         |
| ENSG00000177666 | \-0.0127952    | 3.82338825 | \-0.1376554 | 0.89061862 | 0.95998873 | \-6.3966935 | PNPLA2       |
| ENSG00000198911 | \-0.0073527    | 7.87077499 | \-0.0997401 | 0.92062704 | 0.97123861 | \-6.516177  | SREBF2       |
| ENSG00000064687 | 0.00118805     | 4.08833453 | 0.01081061  | 0.99138279 | 0.9970177  | \-6.4433683 | ABCA7        |

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM36:%20F%20vs.%20M_vocano.png)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM36:%20F%20vs.%20M.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ [GO enrichment analysis on up-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM36:%20F%20vs.%20M_up_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ [GO enrichment analysis on down-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM36:%20F%20vs.%20M_down_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC < -0.25`.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM36:%20F%20vs.%20M_GSEA.png)
#### 3.2.2 ApoE_carrier (carrier vs. no_carrier)
This analysis was done using AD samples: 43 samples are ApoE_carrier, 39 samples are not ApoE_carrier.
| gene\_id        | log2FoldChange | AveExpr    | t           | pvalue     | padj       | B           | gene\_symbol |
| --------------- | -------------- | ---------- | ----------- | ---------- | ---------- | ----------- | ------------ |
| ENSG00000119927 | \-0.2968581    | 6.2215515  | \-3.8116053 | 0.0001722  | 0.00798343 | 0.55831887  | GPAM         |
| ENSG00000110090 | \-0.3092827    | 5.56508052 | \-3.7690377 | 0.00020257 | 0.00855972 | 0.41617493  | CPT1A        |
| ENSG00000204310 | \-0.4008362    | 3.87030641 | \-3.2268248 | 0.00141119 | 0.02451917 | \-1.2605092 | AGPAT1       |
| ENSG00000134324 | \-0.0579603    | 7.05932797 | \-1.6911592 | 0.0919972  | 0.24763081 | \-4.9084777 | LPIN1        |
| ENSG00000278540 | \-0.0803254    | 7.76842183 | \-1.6054406 | 0.10960318 | 0.27306639 | \-5.0322696 | ACACA        |
| ENSG00000177666 | \-0.1636045    | 3.82338825 | \-1.4067181 | 0.16069772 | 0.34405154 | \-5.2214114 | PNPLA2       |
| ENSG00000198911 | \-0.1029214    | 7.87077499 | \-1.1057533 | 0.26984908 | 0.4653703  | \-5.6819664 | SREBF2       |
| ENSG00000185000 | \-0.0948428    | 4.08965733 | \-0.9648735 | 0.33549918 | 0.53001616 | \-5.7516679 | DGAT1        |
| ENSG00000075239 | \-0.05416      | 5.78327843 | \-0.8886607 | 0.37500172 | 0.56528711 | \-5.91012   | ACAT1        |
| ENSG00000165029 | \-0.0828466    | 6.52585122 | \-0.836259  | 0.4037723  | 0.59092067 | \-5.9558586 | ABCA1        |
| ENSG00000072310 | 0.08393572     | 6.11899456 | 0.59829352  | 0.55016168 | 0.70912274 | \-6.1217923 | SREBF1       |
| ENSG00000112972 | \-0.0668269    | 6.60855688 | \-0.565617  | 0.57213893 | 0.72612999 | \-6.1377547 | HMGCS1       |
| ENSG00000169710 | 0.03909267     | 8.00701026 | 0.30140955  | 0.76334164 | 0.86132733 | \-6.223647  | FASN         |
| ENSG00000147872 | \-0.0292193    | 3.71206784 | \-0.2188047 | 0.82697275 | 0.9022342  | \-6.1440792 | PLIN2        |
| ENSG00000064687 | 0.01331927     | 4.08833453 | 0.09695725  | 0.92283457 | 0.95919092 | \-6.2014328 | ABCA7        |

![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM36:%20carrier%20vs.%20no_carrier_vocano.png)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM36:%20carrier%20vs.%20no_carrier.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ [GO enrichment analysis on up-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM36:%20carrier%20vs.%20no_carrier_up_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ [GO enrichment analysis on down-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM36:%20carrier%20vs.%20no_carrier_down_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC < -0.25`.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM36:%20carrier%20vs.%20no_carrier_GSEA.png)
### 3.3 On Control samples
#### 3.3.1 Sex (F vs. M)
This analysis was done using AD samples: 37 samples are AD, 40 samples are Control.
![test](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MSBB_BM36:%20F%20vs.%20M_candidates.csv)
![Volcano plots](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MSBB_BM36:%20F%20vs.%20M_vocano.png)
+ [DE analysis output spreadsheet](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MSBB_BM36:%20F%20vs.%20M.csv). Genes in the spreadsheet are sorted by increasing `adj.pvalue`.
+ [GO enrichment analysis on up-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MSBB_BM36:%20F%20vs.%20M_up_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC > 0.25`.
+ [GO enrichment analysis on down-regulated DEGs](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_Control/MSBB_BM36:%20F%20vs.%20M_down_GO.png) was performed on the DE genes `adj.p < 0.05` and `log2FC < -0.25`.
+ [GSEA analysis](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD_limma_AD/MSBB_BM36:%20F%20vs.%20M_GSEA.png)
#### 3.3.2 ApoE_carrier (carrier vs. no_carrier)
This analysis was done using AD samples: 10 samples are ApoE_carrier, 67 samples are not ApoE_carrier.

