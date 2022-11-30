# Summary of AMP-AD analysis regarding Chromogranin A (CgA)

## AMP-AD
+ Regarding the dataset information, please go to this [page](https://github.com/ningxinkang/Chen_lab_analysis/blob/main/AMP-AD/AMP-AD_limma_diagnosis.md#1-dataset-info)!!
+ T-test and three-way ANOVA show consistent significant down-regulation (AD vs. control) in brain region BM36 (Parahippocampal gyrus)
+ No significant difference found when splitting samples using braak stage, but we can see a slight decrease in expression level of CHGA in samples with **braak level 4-6 vs. braak level 0-3** in Superior temporal gyrus (BM22) and Parahippocampal gyrus (BM36). This two region also show significant down-regulated in t-test and 3-way ANOVA.
+ 
### t-test
![image](https://user-images.githubusercontent.com/46388325/204685552-821eb906-5318-47df-9abd-59e560bceac5.png)

### Three-way ANOVA (controling for Diagnosis, Sex, and APOE_carrier)
![image](https://user-images.githubusercontent.com/46388325/204685606-42505fa4-8d35-476d-8ac0-3bdc34dd4326.png)

### braak stage distribution using AMP-AD dataset
![image](https://user-images.githubusercontent.com/46388325/204686454-83006f55-d76d-49f3-b497-e9acb8a3ad9b.png)

### limma pipeline
#### Dignosis
|                                  |log2FoldChange     |t                 |pvalue              |padj               |
|-----------------------------------------|-------------------|------------------|--------------------|-------------------|
|MCBB_Temporal cortex_all                 |0.370217240191374  |2.02002336775363  |0.045033128336061   |0.0983900569389587 |
|MCBB_Cerebellum_all                      |-0.0390786233413929|-0.242210030742076|0.808924039892734   |0.856510788010718  |
|ROSMAP_Dorsolateral prefrontal cortex_all|-0.0540869019670804|-0.4943723233679  |0.621488819890523   |0.73973900617648   |
|MSBB_BM10_all                            |-0.0883731701004722|-0.817547312240207|0.414922340534079   |0.615548191745125  |
|MSBB_BM22_all                            |-0.497133659507536 |-3.01420368093395 |0.00301489910194642 |0.0198831329009038 |
|MSBB_BM36_all                            |-0.563545074934459 |-3.80529296504272 |0.000199397807370249|0.00129894916289496|
|MSBB_BM44_all                            |-0.204835894826734 |-1.59223998658778 |0.113783176662846   |0.180468014567906  |

#### Dignosis and sex

#### APOE_carrier 
|                                   |log2FoldChange     |t                 |pvalue            |padj             |
|-----------------------------------------|-------------------|------------------|------------------|-----------------|
|MCBB_Temporal cortex_all                 |0.00948129067220105|0.0480956238232277|0.96169942887633  |0.984320857692357|
|MCBB_Cerebellum_all                      |-0.117800718157324 |-0.689621910486372|0.491419736924684 |0.678885480935432|
|ROSMAP_Dorsolateral prefrontal cortex_all|0.0161990371710683 |0.142408966139975 |0.886874716633796 |0.953524764077289|
|MSBB_BM10_all                            |-0.0637387764730635|-0.507411614910524|0.612617252736581 |0.978063705508904|
|MSBB_BM22_all                            |-0.344505799426006 |-1.82712281125092 |0.0696227055583374|0.139515624865139|
|MSBB_BM36_all                            |-0.0246455062469968|-0.113131491380037|0.910064268924296 |0.965000184434014|
|MSBB_BM44_all                            |-0.138424038706116 |-0.897984738727014|0.370871151339171 |0.642865199689387|

#### APOE_carrier and sex
#### APOE_dose 
|1 vs. 0                                  |log2FoldChange     |t                 |pvalue           |padj             |
|-----------------------------------------|-------------------|------------------|-----------------|-----------------|
|MCBB_Temporal cortex_all                 |-0.0217270650609773|-0.104698056923361|0.916746064111626|0.97265300345106 |
|MCBB_Cerebellum_all                      |-0.151890063182992 |-0.857815744613172|0.392270815556731|0.622905807706991|
|ROSMAP_Dorsolateral prefrontal cortex_all|0.0432436091535493 |0.374969591932053 |0.708010731486565|0.885305682554533|
|MSBB_BM10_all                            |-0.0504359025249013|-0.383262949197324|0.702075518879514|0.971967868495234|
|MSBB_BM22_all                            |-0.288456286499859 |-1.45016205376126 |0.149065857891014|0.253284154483563|
|MSBB_BM36_all                            |0.0533391984748137 |0.233868751013314 |0.815379468374326|0.917054949498594|
|MSBB_BM44_all                            |-0.111288069444353 |-0.679336064357109|0.498154975573142|0.757937427097235|

|2 vs. 0                                  |log2FoldChange    |t                 |pvalue           |padj             |
|-----------------------------------------|------------------|------------------|-----------------|-----------------|
|MCBB_Temporal cortex_all                 |0.208794382249852 |0.451044319324194 |0.65256610332848 |0.86021544635371 |
|MCBB_Cerebellum_all                      |0.223963565055351 |0.491405725270289 |0.623809502040302|0.844685639958584|
|ROSMAP_Dorsolateral prefrontal cortex_all|-0.608208738668138|-1.34534636053891 |0.179769763866127|0.719751140018577|
|MSBB_BM10_all                            |-0.181378630941882|-0.508591067351619|0.611797238766974|0.999984905077319|
|MSBB_BM22_all                            |-0.782109826588013|-1.56141593631787 |0.120497394869038|0.83478146724652 |
|MSBB_BM36_all                            |-0.710953169491396|-1.09179520769847 |0.276529458488597|0.809185217471487|
|MSBB_BM44_all                            |-0.318070496920816|-0.81615095324787 |0.415934274839603|0.943986326947691|

|2 vs. 1                                  |log2FoldChange    |t                 |pvalue           |padj             |
|-----------------------------------------|------------------|------------------|-----------------|-----------------|
|MCBB_Temporal cortex_all                 |0.23052144731083  |0.478434270771407 |0.63299189742697 |0.999318385421324|
|MCBB_Cerebellum_all                      |0.375853628238343 |0.802106201929739 |0.423675195969328|0.897196558851955|
|ROSMAP_Dorsolateral prefrontal cortex_all|-0.651452347821687|-1.42205822079808 |0.156293944171638|0.98378542376755 |
|MSBB_BM10_all                            |-0.130942728416981|-0.352307260028422|0.725109715007222|0.999979423210154|
|MSBB_BM22_all                            |-0.493653540088154|-0.936422620135657|0.350535427266212|0.999947043095928|
|MSBB_BM36_all                            |-0.76429236796621 |-1.12171266950118 |0.263629432863894|0.820919130165935|
|MSBB_BM44_all                            |-0.206782427476463|-0.501681724047039|0.616755629542619|0.999779265649454|

#### APOE_dose and sex
## ADRC (exRNA)

### t-test using ADRC1
![image](https://user-images.githubusercontent.com/46388325/204685941-6c3a7ef4-45ea-40c4-b2c9-156ae3dc6bd6.png)

### t-test using ADRC2
![image](https://user-images.githubusercontent.com/46388325/204685973-d269e79f-1c94-45c5-8a47-b30cd6a37830.png)


## braak stage distribution using ADRC1 (exRNA)
![image](https://user-images.githubusercontent.com/46388325/204685713-8a32c1fe-807e-4c3d-b320-46301d047589.png)

## braak stage distribution using ADRC2 (exRNA)
![image](https://user-images.githubusercontent.com/46388325/204685778-dbd91c68-ddaf-49f5-b100-ba5547f825a7.png)
