# direct_flow

---

Stata command **direct_flow** — Flowchart for systematic reviews and evidence synthesis.

The command `direct_flow` (version 2.0) generates publication-ready flowcharts for systematic reviews, overviews of reviews, and other types of evidence synthesis directly from Stata. It supports 12 models and two languages (Portuguese and English).

---

## Authors

Rafael Leite Pacheco<sup>1,2,3,4</sup>, Rachel Riera<sup>1,2</sup>

<sup>1</sup> Núcleo de Avaliação de Tecnologias em Saúde, Hospital Sírio-Libanês.  
<sup>2</sup> Núcleo de Ensino e Pesquisa em Saúde Baseada em Evidências e Avaliação de Tecnologias em Saúde (NEP-SBEATS), Universidade Federal de São Paulo.  
<sup>3</sup> Centro Universitário São Camilo.  
<sup>4</sup> Laboratório de Programação e Análise de Dados (LPAD), Disciplina de Economia e Gestão em Saúde, Universidade Federal de São Paulo.  


---

## Contact

Feedbacks and corrections are welcome!  
e-mail: rleitepacheco@hotmail.com

---

## Installation

```stata
* Step 1
net from https://rlpacheco.github.io/direct_flow/

* Step 2
net install direct_flow, replace

* For details
net describe direct_flow
```

---

## Syntax

```stata
direct_flow, model() n_databases() n_other_sources() n_duplicates() 
  n_first_phase() n_excluded_first_phase() n_second_phase() 
  n_excluded_second_phase() n_included_reports() n_included_studies() 
  language()
  [ n_after_duplicates() n_awaiting_classification() 
    n_included_completed() n_included_ongoing() 
    n_included_with_results()
    n_included_qualitative() n_included_quantitative() ]
```

### Required options

| Option | Description |
|---|---|
| `model()` | Flowchart model (see table below) |
| `n_databases()` | References retrieved from electronic databases |
| `n_other_sources()` | References retrieved from other sources |
| `n_duplicates()` | Number of duplicates removed |
| `n_first_phase()` | Records assessed in the first phase (title/abstract) |
| `n_excluded_first_phase()` | Records excluded in the first phase |
| `n_second_phase()` | Records assessed in the second phase (full-text) |
| `n_excluded_second_phase()` | Records excluded in the second phase |
| `n_included_reports()` | Number of included reports |
| `n_included_studies()` | Number of included studies |
| `language()` | Language: `pt` (Portuguese) or `en` (English) |

### Conditional options

These options are required depending on the model chosen:

| Option | Required by models | Description |
|---|---|---|
| `n_after_duplicates()` | 2, 3, overview_2, overview_3 | References after removing duplicates |
| `n_awaiting_classification()` | 3, 4, 5, overview_3, overview_4 | Studies awaiting classification |
| `n_included_completed()` | 1, 2, 3, 4, 7, 8 | Completed studies |
| `n_included_ongoing()` | 1, 2, 3, 4, 7, 8 | Ongoing studies |
| `n_included_qualitative()` | 1, 2, 3, 4 | Studies in qualitative synthesis |
| `n_included_quantitative()` | 1, 2, 3, 4 | Studies in quantitative synthesis |
| `n_included_with_results()` | 8 | Studies contributing to outcome analysis |

---

## Available models

There are 12 available models. Models 1–8 are designed for systematic reviews and models overview_1–overview_4 are designed for overviews (systematic reviews of systematic reviews). 

The models differ in the presence or absence of four optional elements:

| Feature | Description |
|---|---|
| **After duplicates** | Intermediate box showing count after deduplication |
| **Awaiting classification** | Box for studies pending classification |
| **Completed/ongoing** | Breakdown of included studies by status |
| **Qualitative/quantitative synthesis** | Bottom boxes for synthesis breakdown |

### Models for systematic reviews

| Model | After duplicates | Awaiting | Completed/ongoing | Synthesis |
|:---:|:---:|:---:|:---:|:---:|
| 1 | — | — | ✓ | ✓ |
| 2 | ✓ | — | ✓ | ✓ |
| 3 | ✓ | ✓ | ✓ | ✓ |
| 4 | — | ✓ | ✓ | ✓ |
| 5 | — | ✓ | — | — |
| 6 | — | — | — | — |
| 7 | — | — | ✓ | — |
| 8* | — | — | ✓ | — |

\* Model 8 replaces the synthesis boxes with a line for "studies contributing to outcome analysis" (`n_included_with_results`).

### Models for overviews

| Model | After duplicates | Awaiting |
|:---:|:---:|:---:|
| overview_1 | — | — |
| overview_2 | ✓ | — |
| overview_3 | ✓ | ✓ |
| overview_4 | — | ✓ |

Overview models use "reviews" instead of "studies" in the inclusion box.

---

## Examples

### Models for systematic reviews

**Model 1 — Portuguese**

```stata
direct_flow, model(1) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) n_included_completed(2) n_included_ongoing(1) n_included_qualitative(2) n_included_quantitative(1) language(pt)
```

**Model 1 — English**

```stata
direct_flow, model(1) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) n_included_completed(2) n_included_ongoing(1) n_included_qualitative(2) n_included_quantitative(1) language(en)
```

**Model 2 — Portuguese**

```stata
direct_flow, model(2) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1,105) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) n_included_completed(1) n_included_ongoing(2) n_included_qualitative(1) n_included_quantitative(1) language(pt)
```

**Model 2 — English**

```stata
direct_flow, model(2) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1.105) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) n_included_completed(2) n_included_ongoing(1) n_included_qualitative(2) n_included_quantitative(1) language(en)
```

**Model 3 — Portuguese**

```stata
direct_flow, model(3) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1,105) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_awaiting_classification(1) n_included_reports(2) n_included_studies(2) n_included_completed(1) n_included_ongoing(1) n_included_qualitative(1) n_included_quantitative(1) language(pt)
```

**Model 3 — English**

```stata
direct_flow, model(3) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1.105) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(2) n_awaiting_classification(1) n_included_reports(2) n_included_studies(2) n_included_completed(1) n_included_ongoing(1) n_included_qualitative(1) n_included_quantitative(1) language(en)
```

**Model 4 — Portuguese**

```stata
direct_flow, model(4) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_awaiting_classification(1) n_included_reports(2) n_included_studies(2) n_included_completed(1) n_included_ongoing(1) n_included_qualitative(1) n_included_quantitative(1) language(pt)
```

**Model 4 — English**

```stata
direct_flow, model(4) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_awaiting_classification(1) n_included_reports(2) n_included_studies(2) n_included_completed(1) n_included_ongoing(1) n_included_qualitative(1) n_included_quantitative(1) language(en)
```

**Model 5 — Portuguese**

```stata
direct_flow, model(5) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(1) n_awaiting_classification(1) n_included_reports(3) n_included_studies(3) language(pt)
```

**Model 5 — English**

```stata
direct_flow, model(5) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(1) n_awaiting_classification(1) n_included_reports(3) n_included_studies(3) language(en)
```

**Model 6 — Portuguese**

```stata
direct_flow, model(6) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) language(pt)
```

**Model 6 — English**

```stata
direct_flow, model(6) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) language(en)
```

**Model 7 — Portuguese**

```stata
direct_flow, model(7) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(2) n_included_studies(2) n_included_completed(1) n_included_ongoing(1) language(pt)
```

**Model 7 — English**

```stata
direct_flow, model(7) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(2) n_included_studies(2) n_included_completed(1) n_included_ongoing(1) language(en)
```

**Model 8 — Portuguese**

```stata
direct_flow, model(8) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) n_included_completed(2) n_included_ongoing(1) n_included_with_results(2) language(pt)
```

**Model 8 — English**

```stata
direct_flow, model(8) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) n_included_completed(2) n_included_ongoing(1) n_included_with_results(2) language(en)
```

### Models for overviews (systematic review of systematic reviews)

**Overview Model 1 — Portuguese**

```stata
direct_flow, model(overview_1) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) language(pt)
```

**Overview Model 1 — English**

```stata
direct_flow, model(overview_1) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) language(en)
```

**Overview Model 2 — Portuguese**

```stata
direct_flow, model(overview_2) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1,105) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) language(pt)
```

**Overview Model 2 — English**

```stata
direct_flow, model(overview_2) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1.105) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(2) n_included_reports(3) n_included_studies(3) language(en)
```

**Overview Model 3 — Portuguese**

```stata
direct_flow, model(overview_3) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1,105) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(1) n_awaiting_classification(1) n_included_reports(3) n_included_studies(3) language(pt)
```

**Overview Model 3 — English**

```stata
direct_flow, model(overview_3) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_after_duplicates(1.105) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(1) n_awaiting_classification(1) n_included_reports(3) n_included_studies(3) language(en)
```

**Overview Model 4 — Portuguese**

```stata
direct_flow, model(overview_4) n_databases(1,200) n_other_sources(5) n_duplicates(100) n_first_phase(1,105) n_excluded_first_phase(1,100) n_second_phase(5) n_excluded_second_phase(1) n_awaiting_classification(1) n_included_reports(3) n_included_studies(3) language(pt)
```

**Overview Model 4 — English**

```stata
direct_flow, model(overview_4) n_databases(1.200) n_other_sources(5) n_duplicates(100) n_first_phase(1.105) n_excluded_first_phase(1.100) n_second_phase(5) n_excluded_second_phase(1) n_awaiting_classification(1) n_included_reports(3) n_included_studies(3) language(en)
```


---

## References

The flowcharts were inspired and adapted from the models recommended by the PRISMA guidelines (1) and used by Review Manager software from Cochrane (2).

1. Liberati A, Altman DG, Tetzlaff J, Mulrow C, Gøtzsche PC, Ioannidis JP, Clarke M, Devereaux PJ, Kleijnen J, Moher D. The PRISMA statement for reporting systematic reviews and meta-analyses of studies that evaluate healthcare interventions: explanation and elaboration. BMJ. 2009 Jul 21;339:b2700. doi: 10.1136/bmj.b2700. PMID: 19622552; PMCID: PMC2714672.

2. Review Manager Web (RevMan Web). The Cochrane Collaboration. Available at revman.cochrane.org

Some parts of the code were inspired by the package **FLOWCHART** by Isaac M. E. Dodd. Available from: https://econpapers.repec.org/software/bocbocode/s458387.htm
