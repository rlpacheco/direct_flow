# Direct flow
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

Stata command **direct_flow** - Flowchart for systematic reviews and other type of studies.

The command direct_flow was created for the immediate generation of flowcharts for systematic reviews, research synthesis and other type of studies.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Authors**

Rafael Leite Pacheco<sup>1,2,3</sup>, Rachel Riera<sup>1,2</sup>

[1] Núcleo de Avaliação de Tecnologias em Saúde, Hospital Sírio-Libanês.

[2] Núcleo de Ensino e Pesquisa em Saúde Baseada em Evidências e Avaliação de Tecnologias em Saúde (NEP-SBEATS), Universidade Federal de São Paulo.

[3] Centro Universitário São Camilo.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Contact**

Feedbacks and corrections are welcome!

e-mail: rleitepacheco@hotmail.com

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Downloading package**

(Step 1) Type at STATA: net from https://rlpacheco.github.io/direct_flow/

(Step 2) Then type: net install direct_flow

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

There are current 8 available models in direct_flow. Models 1-4 are directed to a systematic review and models 5-8 are directed to an overview (systematic review of systematic reviews). It is impossible to change boxes, text and models in direct_flow. If you have a suggestion or want a model to be added please contact the authors (rleitepacheco@hotmail.com). 

An example code for each model is presented bellow:

***Models for systematic reviews***

**Model 1 - Portuguese**

direct_flow, model(1) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) n_included_completed(2) n_included_ongoing(1) n_included_qualitative(2) n_included_quantitative(1) language(pt)

**Model 1 - English**

direct_flow, model(1) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) n_included_completed(2) n_included_ongoing(1) n_included_qualitative(2) n_included_quantitative(1) language(en)

**Model 2 - Portuguese**

direct_flow, model(2) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1,105) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) n_included_completed(1) n_included_ongoing(1) n_included_qualitative(2) n_included_quantitative(1) language(pt)

**Model 2 - English**

direct_flow, model(2) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1.105) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) n_included_completed(2) n_included_ongoing(1) n_included_qualitative(2) n_included_quantitative(1) language(en)

**Model 3 - Portuguese**

direct_flow, model(3) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1,105) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_awaiting_classification(1) n_included_reports(2) n_included_studies(2) n_included_completed(1) n_included_ongoing(1) n_included_qualitative(1) n_included_quantitative(1) language(pt)

**Model 3 - English**

direct_flow, model(3) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1.105) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(2) n_awaiting_classification(1) n_included_reports(2) n_included_studies(2) n_included_completed(1) n_included_ongoing(1) n_included_qualitative(1) n_included_quantitative(1) language(en)

**Model 4 - Portuguese**

direct_flow, model(4) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_awaiting_classification(1) n_included_reports(2) n_included_studies(2) n_included_completed(1) n_included_ongoing(1) n_included_qualitative(1) n_included_quantitative(1) language(pt)

**Model 4 - English**

direct_flow, model(4) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_awaiting_classification(1) n_included_reports(2) n_included_studies(2) n_included_completed(1) n_included_ongoing(1) n_included_qualitative(1) n_included_quantitative(1) language(en)


***Models for overviews (systematic review of systematic reviews)***

**Model 1 Overview - Portuguese**

direct_flow, model(overview_1) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) language(pt)

**Model 1 Overview - English**

direct_flow, model(overview_1) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) language(en)

**Model 2 Overview - Portuguese**

direct_flow, model(overview_2) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1,105) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) language(pt)

**Model 2 Overview - English**

direct_flow, model(overview_2) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1.105) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) language(en)

**Model 3 Overview - Portuguese**

direct_flow, model(overview_3) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1,105) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(1) n_awaiting_classification(1) n_included_reports(3) n_included_studies(3) language(pt)

**Model 3 Overview - English**

direct_flow, model(overview_3) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1.105) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(1) n_awaiting_classification(1) n_included_reports(3) n_included_studies(3) language(en)

**Model 4 Overview - Portuguese**

direct_flow, model(overview_4) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(1) n_awaiting_classification(1) n_included_reports(3) n_included_studies(3) language(pt)

**Model 4 Overview - English**

direct_flow, model(overview_4) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(1) n_awaiting_classification(1) n_included_reports(3) n_included_studies(3) language(en)



-------------------------------------------------------------------------------------------------------------------------------------------------------------------
**References**

The flowcharts were insipired and adapted from the the models recommend by PRISMA guidelines (1) and used by Review Manager software from Cochrane (2).

 1 - Liberati A, Altman DG, Tetzlaff J, Mulrow C, Gøtzsche PC, Ioannidis JP, Clarke M, Devereaux PJ, Kleijnen J, Moher D. The PRISMA statement for reporting systematic reviews and meta-analyses of studies that evaluate healthcare interventions: explanation and elaboration. BMJ. 2009 Jul 21;339:b2700. doi: 10.1136/bmj.b2700. PMID: 19622552; PMCID: PMC2714672.
 
 2 - Review Manager Web (RevMan Web). The Cochrane Collaboration. Available at revman.cochrane.org
 
Some parts of the code were inspired by the package **FLOWCHART** by Isaac M. E. Dodd. Available from: https://econpapers.repec.org/software/bocbocode/s458387.htm

