## Exporting data from REDCap
1. PID 1958
2. Data Exports, Reports, and Stats
3. Choose "Export Data" from option "A - All data (all records and fields)"
4. Export format: CSV (raw data)
5. De-identification options: "Remove all identifier fields" YES
6. Additional export options: "Export survey identifier field and survey timestamp field(s)?" YES
7. Advanced data formatting options
- "Export gray Form Status fields with blank value"
- comma as default separator
- Use period/full stop (.) as decimal
8. Export file to "/Users/gustavosplmoura/Library/Mobile Documents/com~apple~CloudDocs/Medicina/Biblioteca/Research/Data Science/Data Science/PROJECTS/DVEP"
9. Rename file to "data_dvep.csv"
Note: resulting file must have 780 variables (last variable on column ACZ: "anexos_complete")

#   data_codebook <- read_csv(
#           "data_codebook.csv",
#           col_names = TRUE,
#           col_types = NULL,
#           col_select = NULL,
#           id = NULL,
#           locale = default_locale(),
#           na = c("", "NA", "NI", "UNK", "NASK", "ASKU", "INV"),
#           quote = "\"",
#           comment = "",
#           trim_ws = TRUE,
#           skip = 0, # Number of lines to skip before reading data
#           n_max = Inf, # Maximum number of lines to read.
#           guess_max = 1000,
#           name_repair = "unique",
#           num_threads = readr_threads(),
#           progress = show_progress(),
#           show_col_types = TRUE,
#           skip_empty_rows = TRUE,
#           lazy = should_read_lazy()
#       )


# 5. Assingning correct variable types
# Excel formula to convert REDCap field types to tidyverse tibble nomenclature
#     =IF(
#     J2="calc","d",IF(
#     J2="radio","f",IF(
#     J2="notes","c",IF(
#     J2="dropdown","f",IF(
#     J2="slider","i",if(
#         and(J2="text",N2=""),"c",if(
#         and(J2="text",N2="date_dmy"),"D",if(
#         and(J2="text",N2="integer"),"i",if(
#         and(J2="text",left(N2,6)="number"),"d",if(
#         and(J2="text",N2="datetime_dmy"),"T",if(
#         and(J2="text",N2="time_mm_ss"),"t",if(
#         and(J2="text",N2="time"),"t",""
#         ))))))))))))

# Checking each column's variable type
# If you are using dplyr, you can use glimpse(), which is like str() but optimized for tibbles. It shows a cleaner, more readable summary.
## <chr>: Character
## <dbl>: Double (floating-point number)
## <int>: Integer
## <fct>: Factor
## <date>: Date
## <dttm>: Date-Time (POSIXct)
## 
## sapply() (Show all column types)
## sapply(data, class)