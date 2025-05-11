rm(list = ls())
graphics.off()
cat("\014")  # Clear any pending RStudio sessions or temporary files

# Load functions from external script
source("helper_functions.R")

## Load necessary libraries
library(tidyverse)
library(readxl)
library(lubridate)
library(stringr)
library(purrr)
library(here)

# Read Files ----
## Codebooks
codebook_dvep <- read_excel(
    "Codebooks/codebook_dvep.xlsx",
    col_names = TRUE,
    col_types = NULL,
    na = c("", "NA", "NI", "UNK", "NASK", "ASKU", "INV"),
    trim_ws = TRUE,
    skip = 0, # Number of lines to skip before reading data
    n_max = Inf, # Maximum number of lines to read.
    guess_max = 1000
) %>%
    arrange(index)

codebook_structure  <- read_csv(
    "Codebooks/codebook_structure.csv",
    col_names = TRUE)

codebook_ncit  <- read_csv(
    "Codebooks/codebook_ncit.csv",
    col_names = TRUE)

codebook_bia <- read_excel(
    "Codebooks/codebook_bia.xlsx",
    col_names = TRUE,
    col_types = NULL,
    na = c("", "NA", "NI", "UNK", "NASK", "ASKU", "INV"),
    trim_ws = TRUE,
    skip = 0, # Number of lines to skip before reading data
    n_max = Inf, # Maximum number of lines to read.
    guess_max = 1000
) %>%
    arrange(index)

## Data
