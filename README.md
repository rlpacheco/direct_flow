# Direct flow
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

Stata command **direct_flow** - Flowchart for systematic reviews and other type of studies.

The command direct_flow was created for the immediate generation of flowcharts for systematic reviews, research synthesis and other type of studies.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Authors**

Rafael Leite Pacheco<sup>1,2,3</sup>, Ana Luiza Cabrera Martimbianco<sup>1,2,5</sup>, Rachel Riera<sup>1,2</sup>

[1] Núcleo de Avaliação de Tecnologias em Saúde, Hospital Sírio-Libanês.

[2] Núcleo de Ensino e Pesquisa em Saúde Baseada em Evidências e Avaliação de Tecnologias em Saúde (NEP-SBEATS), Universidade Federal de São Paulo.

[3] Centro Universitário São Camilo.

[4] Laboratório de Programação e Análise de Dados (LPAD), Disciplina de Economia e Gestão em Saúde, Universidade Federal de São Paulo.

[5] Universidade Metropolitana de Santos.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Contact**

Feedbacks and corrections are welcome!

e-mail: rleitepacheco@hotmail.com

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Downloading package**

(Step 1) Type at STATA: net from https://rlpacheco.github.io/direct_flow/

(Step 2) Then type: net install direct_flow, replace

Your package will be ready for use. For details, type: net describe direct_flow


-------------------------------------------------------------------------------------------------------------------------------------------------------------------
**Title**

**direct_flow** - a command for the immediate generation of flowcharts for systematic reviews, research synthesis and other type of studies

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
**Syntax**

**direct_flow**, model() n_databases() n_other_sources() n_duplicates() n_after_duplicates() n_first_phase() n_excluded_first_phase() n_second_phase() n_excluded_second_phase() n_awaiting_classification() n_included_reports() n_included_studies() n_included_completed() n_included_ongoing() n_included_qualitative() n_included_quantitative() language() 

where,

    model() specifies the flowchart model.

    n_databases() specifies the number of references retrieved from eletronic databases.

    n_other_sources() specifies the number of references retrieved from other sources.

    n_duplicates() specifies the number of duplicates.

    n_after_duplicates() specifies the number of references after the elimination of duplicates.

    n_first_phase() specifies the number of records assessed in the first phase of the selection process.

    n_excluded_first_phase() specifies the number of records excluded in the first phase of the selection process.

    n_second_phase() specifies the number of records assessed in the second phase of the selection process.

    n_excluded_second_phase() specifies the number of records excluded in the second phase of the selection process.

    n_awaiting_classification() specifies the number of awaiting classification studies.

    n_included_reports() specifies the number of included reports of studies.

    n_included_studies() specifies the number of included studies.

    n_included_completed() specifies the number of included completed studies.

    n_included_ongoing() specifies the number of ongoing studies.

    n_included_qualitative() specifies the number of studies included in the qualitative synthesis.

    n_included_quantitative() specifies the number of studies included in the quantitative synthesis.

    language() specifies the language of the flowchart.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
**Description and examples**

There are current 11 available models in direct_flow. Models 1-7 are directed to a systematic review and models 7-10 are directed to an overview (systematic review of systematic reviews). It is impossible to change boxes, text and models in direct_flow. If you have a suggestion or want a model to be added please contact the authors (rleitepacheco@hotmail.com). 

An example code for each model is presented bellow:

***Models for systematic reviews***

**Model 1 - Portuguese**

direct_flow, model(1) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) n_included_completed(2) n_included_ongoing(1) n_included_qualitative(2) n_included_quantitative(1) language(pt)

![model_1](https://user-images.githubusercontent.com/98093302/172178022-03423251-3d40-4bab-ae1e-d76580b7fc71.png)

**Model 1 - English**

direct_flow, model(1) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) n_included_completed(2) n_included_ongoing(1) n_included_qualitative(2) n_included_quantitative(1) language(en)

![model_1_en](https://user-images.githubusercontent.com/98093302/172179129-e19c2f20-82ec-4aa6-8a0a-9d12f31e2afa.png)

**Model 2 - Portuguese**

direct_flow, model(2) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1,105) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) n_included_completed(1) n_included_ongoing(2) n_included_qualitative(1) n_included_quantitative(1) language(pt)

![model_2](https://user-images.githubusercontent.com/98093302/172179299-6d78780b-12d4-4677-be67-d45950dd1bf7.png)

**Model 2 - English**

direct_flow, model(2) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1.105) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) n_included_completed(2) n_included_ongoing(1) n_included_qualitative(2) n_included_quantitative(1) language(en)

![model_2_en](https://user-images.githubusercontent.com/98093302/172179415-b5b0693e-a1c5-4fe7-8445-44b4cb3c194d.png)

**Model 3 - Portuguese**

direct_flow, model(3) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1,105) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_awaiting_classification(1) n_included_reports(2) n_included_studies(2) n_included_completed(1) n_included_ongoing(1) n_included_qualitative(1) n_included_quantitative(1) language(pt)

![model_3](https://user-images.githubusercontent.com/98093302/172179540-cc09461e-6895-49b4-8d4b-8a4f0bd4813a.png)

**Model 3 - English**

direct_flow, model(3) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1.105) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(2) n_awaiting_classification(1) n_included_reports(2) n_included_studies(2) n_included_completed(1) n_included_ongoing(1) n_included_qualitative(1) n_included_quantitative(1) language(en)

![model_3_en](https://user-images.githubusercontent.com/98093302/172179650-37a3bd5b-f48a-4876-baaf-cdc2ce94d4d9.png)

**Model 4 - Portuguese**

direct_flow, model(4) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_awaiting_classification(1) n_included_reports(2) n_included_studies(2) n_included_completed(1) n_included_ongoing(1) n_included_qualitative(1) n_included_quantitative(1) language(pt)

![model_4](https://user-images.githubusercontent.com/98093302/172179753-fe53f64b-bfb5-46df-b2f5-d5b98aeebac7.png)

**Model 4 - English**

direct_flow, model(4) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_awaiting_classification(1) n_included_reports(2) n_included_studies(2) n_included_completed(1) n_included_ongoing(1) n_included_qualitative(1) n_included_quantitative(1) language(en)

![model_4_en](https://user-images.githubusercontent.com/98093302/172179868-a73f89e2-fcfc-4571-b875-7aadca449bd4.png)

**Model 5 - Portuguese**

direct_flow, model(5) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(1) n_awaiting_classification(1) n_included_reports(3) n_included_studies(3) language(pt)

![model_5](https://user-images.githubusercontent.com/98093302/173367941-aad13bd4-9bc1-4cf2-bb21-951dd3d8bd69.png)

**Model 5 - English**

direct_flow, model(5) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(1) n_awaiting_classification(1) n_included_reports(3) n_included_studies(3) language(en)

![model_5_en](https://user-images.githubusercontent.com/98093302/173368096-5c513612-9e0e-4206-8e0e-b175da60cf1e.png)

**Model 6 - Portuguese**

direct_flow, model(6) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) language(pt)

![model_6](https://user-images.githubusercontent.com/98093302/173370635-06cfc026-7305-427d-b9e4-e9074b995c7a.png)

**Model 6 - English**

direct_flow, model(6) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) language(en)

![model_6_en](https://user-images.githubusercontent.com/98093302/173370306-3af696db-c9ee-4a6a-9107-dcd01c5b0720.png)

**Model 7 - Portuguese**

direct_flow, model(7) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(2) n_included_studies(2) n_included_completed(1) n_included_ongoing(1) language(pt)

![ex7_pt](https://github.com/rlpacheco/direct_flow/assets/98093302/37fa5813-ea70-40fd-bf9d-f145c799ac60)

**Model 7 - English**
direct_flow, model(7) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(2) n_included_studies(2) n_included_completed(1) n_included_ongoing(1) language(en)

![ex7_eng](https://github.com/rlpacheco/direct_flow/assets/98093302/960ab333-bc17-4714-9ddd-4cc33143c886)

***Models for overviews (systematic review of systematic reviews)***

**Model 1 Overview - Portuguese**

direct_flow, model(overview_1) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) language(pt)

![modelo_1](https://user-images.githubusercontent.com/98093302/172179984-7f8d143e-53a7-4cd3-9983-e39bd868ac4e.png)

**Model 1 Overview - English**

direct_flow, model(overview_1) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) language(en)

![modelo_1_en](https://user-images.githubusercontent.com/98093302/172180068-346d7171-7b32-4c5b-85ff-960e3552dafb.png)

**Model 2 Overview - Portuguese**

direct_flow, model(overview_2) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1,105) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) language(pt)

![modelo_2](https://user-images.githubusercontent.com/98093302/172180145-bf175362-e3d7-4deb-af0a-75f48b0f05f4.png)

**Model 2 Overview - English**

direct_flow, model(overview_2) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1.105) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) language(en)

![modelo_2_en](https://user-images.githubusercontent.com/98093302/172180220-9150b9a5-22f1-4bd4-a1bd-b1094c0a3564.png)

**Model 3 Overview - Portuguese**

direct_flow, model(overview_3) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1,105) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(1) n_awaiting_classification(1) n_included_reports(3) n_included_studies(3) language(pt)

![modelo_3](https://user-images.githubusercontent.com/98093302/172180353-f7b2be50-9308-4762-b9d8-c34c52049b76.png)

**Model 3 Overview - English**

direct_flow, model(overview_3) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1.105) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(1) n_awaiting_classification(1) n_included_reports(3) n_included_studies(3) language(en)

![modelo_3_en](https://user-images.githubusercontent.com/98093302/172180427-4bdcfc00-7a71-4401-9a38-de0b3d79dcbd.png)

**Model 4 Overview - Portuguese**

direct_flow, model(overview_4) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(1) n_awaiting_classification(1) n_included_reports(3) n_included_studies(3) language(pt)

![modelo_4](https://user-images.githubusercontent.com/98093302/172180559-ea2bdf37-eb97-4d11-b9f6-1fdd22e03744.png)

**Model 4 Overview - English**

direct_flow, model(overview_4) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(1) n_awaiting_classification(1) n_included_reports(3) n_included_studies(3) language(en)

![modelo_4_en](https://user-images.githubusercontent.com/98093302/172180674-8f4fde86-6f44-410c-a331-63ca0d4c154c.png)

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
**References**

The flowcharts were insipired and adapted from the the models recommend by PRISMA guidelines (1) and used by Review Manager software from Cochrane (2).

 1 - Liberati A, Altman DG, Tetzlaff J, Mulrow C, Gøtzsche PC, Ioannidis JP, Clarke M, Devereaux PJ, Kleijnen J, Moher D. The PRISMA statement for reporting systematic reviews and meta-analyses of studies that evaluate healthcare interventions: explanation and elaboration. BMJ. 2009 Jul 21;339:b2700. doi: 10.1136/bmj.b2700. PMID: 19622552; PMCID: PMC2714672.
 
 2 - Review Manager Web (RevMan Web). The Cochrane Collaboration. Available at revman.cochrane.org
 
Some parts of the code were inspired by the package **FLOWCHART** by Isaac M. E. Dodd. Available from: https://econpapers.repec.org/software/bocbocode/s458387.htm

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

