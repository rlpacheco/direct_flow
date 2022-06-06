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


-------------------------------------------------------------------------------------------------------------------------------------------------------------------
**References**

The flowcharts were insipired and adapted from the the models recommend by PRISMA guidelines (1) and used by Review Manager software from Cochrane (2).

 1 - Liberati A, Altman DG, Tetzlaff J, Mulrow C, Gøtzsche PC, Ioannidis JP, Clarke M, Devereaux PJ, Kleijnen J, Moher D. The PRISMA statement for reporting systematic reviews and meta-analyses of studies that evaluate healthcare interventions: explanation and elaboration. BMJ. 2009 Jul 21;339:b2700. doi: 10.1136/bmj.b2700. PMID: 19622552; PMCID: PMC2714672.
 
 2 - Review Manager Web (RevMan Web). The Cochrane Collaboration. Available at revman.cochrane.org
 
Some parts of the code were inspired by the package **FLOWCHART** by Isaac M. E. Dodd.

