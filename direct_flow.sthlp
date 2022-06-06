{smcl}
{title:Title}
{phang}
{bf:direct_flow} {hline 2} a command for the immediate generation of flowcharts for systematic reviews, research synthesis and other type of studies

{marker syntax}{...}
{title:Syntax}
{p 8 17 2}
{cmdab:direct_flow}
[{help if}]
[{help in}]
[{cmd:,}
{it:options}]


{marker description}{...}
{title:Description}
{pstd}

{pstd}
 {cmd:direct_flow} generates flowcharts for systematic reviews, research synthesis and other type of studies. Complete guidance and all available models are available at: https://rlpacheco.github.io/direct_flow/

{marker options}{...}
{title:Options}
{dlgtab:Main}

{phang}
{opt model()}  specifies the flowchart model.

{phang}
{opt n_databases()}  specifies the number of references retrieved from eletronic databases.

{phang}
{opt n_other_sources()}  specifies the number of references retrieved from other sources.

{phang}
{opt n_duplicates()}  specifies the number of duplicates.

{phang}
{opt n_after_duplicates()}  specifies the number of references after the elimination of duplicates.

{phang}
{opt n_first_phase()}  specifies the number of records assessed in the first phase of the selection process.

{phang}
{opt n_excluded_first_phase()}  specifies the number of records excluded in the first phase of the selection process.

{phang}
{opt n_second_phase()}  specifies the number of records assessed in the second phase of the selection process.

{phang}
{opt n_excluded_second_phase()}  specifies the number of records excluded in the second phase of the selection process.

{phang}
{opt n_awaiting_classification()}  specifies the number of awaiting classification studies.

{phang}
{opt n_included_reports()}  specifies the number of included reports of studies.

{phang}
{opt n_included_studies()}  specifies the number of included studies.

{phang}
{opt n_included_completed()}  specifies the number of included completed studies.

{phang}
{opt n_included_ongoing()}  specifies the number of ongoing studies.

{phang}
{opt n_included_qualitative()}  specifies the number of studies included in the qualitative synthesis.

{phang}
{opt n_included_quantitative()}  specifies the number of studies included in the quantitative synthesis.

{phang}
{opt language()}  specifies the language of the flowchart.

{phang}
{opt *} 


{marker examples}{...}
{title:Examples}

 direct_flow, model(3) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1.105) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(2) n_awaiting_classification(1) n_included_reports(2) n_included_studies(2) n_included_completed(1) n_included_ongoing(1) n_included_qualitative(1) n_included_quantitative(1) language(en)


{title:References}
{pstd}

{pstd}
The flowcharts were insipired and adapted from the the models recommend by PRISMA guidelines (1) and used by Review Manager software from Cochrane (2).

{pstd}
1 - Liberati A, Altman DG, Tetzlaff J, Mulrow C, Gøtzsche PC, Ioannidis JP, Clarke M, Devereaux PJ, Kleijnen J, Moher D. The PRISMA statement for reporting systematic reviews and meta-analyses of studies that evaluate healthcare interventions: explanation and elaboration. BMJ. 2009 Jul 21;339:b2700. doi: 10.1136/bmj.b2700. PMID: 19622552; PMCID: PMC2714672.

{pstd}
2 - Review Manager Web (RevMan Web). The Cochrane Collaboration. Available at revman.cochrane.org

{pstd}
Some parts of the code were inspired by the package FLOWCHART by Isaac M. E. Dodd. 

{pstd}

{pstd}


{title:Author}
{p}

Rafael Leite Pacheco, Núcleo de Avaliação de Tecnologias em Saúde (NATS) - Hospital Sírio-Libanês.
Rachel Riera, Núcleo de Avaliação de Tecnologias em Saúde (NATS) - Hospital Sírio-Libanês.

Email {browse "mailto:rleitepacheco@hotmail.com":rleitepacheco@hotmail.com}



{title:See Also}

Complete guidance and all available models are available at: https://rlpacheco.github.io/direct_flow/


