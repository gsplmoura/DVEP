# DVEP: Data Visualization and Exploratory Project

## Overview
The **DVEP** project is designed to facilitate data visualization, exploratory analysis, and reporting using R. This repository is structured to ensure clarity, scalability, and reproducibility in data analysis workflows.

## Repo
Gustavo Santos Paiva Laender Moura
gsplmoura@usp.br
Git: [https://github.com/gsplmoura/DVEP](https://github.com/gsplmoura/DVEP)
🚀 GitHub Pages URL: [https://gsplmoura.github.io/DVEP/](https://gsplmoura.github.io/DVEP/)

## Setup Instructions
### Prerequisites
Ensure you have the following software and packages installed:
- **R** (version 4.0 or later)
- **RStudio** (optional, recommended for an enhanced coding environment)
- Required R packages:
```R
install.packages(c("tidyverse", "readxl", "lubridate", "stringr", "purrr", "gt", "jmv", "skimr"))
```

## Exporting data from REDCap

1.  PID 1958

2.  Data Exports, Reports, and Stats

3.  Choose "Export Data" from option "A - All data (all records and fields)"

4.  Export format: CSV (raw data)

5.  De-identification options: "Remove all identifier fields" YES

6.  Additional export options: "Export survey identifier field and survey timestamp field(s)?" YES

7.  Advanced data formatting options

    -   "Export gray Form Status fields with blank value"
    -   comma as default separator
    -   Use period/full stop (.) as decimal

8.  Export file to "\~Data Science/PROJECTS/DVEP"

9.  Rename file to "data_dvep.csv" Note: resulting file must have 780 variables (last variable on column ACZ: "anexos_complete")

## Files

### Codebooks and supporting files

-   **codebook_dvep.xlsx**: Codebook for REDCap DVEP Project
-   **codebook_structure.csv:** Data structure for DVEP project
-   **codebook_ncit.csv** Operational Support - NCIT coding
-   **codebook_bia.xlsx** Codebook for BIA data

### Data

-   **data_dvep.csv** Full data from REDCap DVEP Project.
-   **data_bia_D1.csv** BIA data for the first visit for all participants. Contains BIA data from the first visit only. Contains BIA data from participants who did not complete the intervention.
-   **data_bia_D3.csv** BIA data for participants that completed the intervention. Contains BIA data from both the first and third visits.

