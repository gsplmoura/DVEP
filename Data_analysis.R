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
data <- readRDS("Data_processed/data.rds")
data_bia <- readRDS("Data_processed/data_bia.rds")
data_bia_D1 <- readRDS("Data_processed/data_bia_D1.rds")
data_bia_D1_mean <- readRDS("Data_processed/data_bia_D1_mean.rds")
data_bia_D1_raw <- readRDS("Data_processed/data_bia_D1_raw.rds")
data_bia_D3 <- readRDS("Data_processed/data_bia_D3.rds")
data_bia_D3_mean <- readRDS("Data_processed/data_bia_D3_mean.rds")
data_bia_D3_raw <- readRDS("Data_processed/data_bia_D3_raw.rds")
data_bia_mean <- readRDS("Data_processed/data_bia_mean.rds")
data_d1_exclusive <- readRDS("Data_processed/data_d1_exclusive.rds")
data_filtered <- readRDS("Data_processed/data_filtered.rds")
data_filtered_seca <- readRDS("Data_processed/data_filtered_seca.rds")
I21_conditions_R <- readRDS("Data_processed/I21_conditions_R.rds")
I22_drugs_R <- readRDS("Data_processed/I22_drugs_R.rds")
I27_labs_R <- readRDS("Data_processed/I27_labs_R.rds")
I29_compliance <- readRDS("Data_processed/I29_compliance.rds")
I30_events_R <- readRDS("Data_processed/I30_events_R.rds")

## SUPERTIBBLE
data_instruments <- readRDS("Data_instruments/data_instruments.rds")

