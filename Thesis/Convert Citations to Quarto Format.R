library(stringr)

# Define file paths
input_qmd <- "Thesis/Thesis.qmd"
output_qmd <- "Thesis/final_document.qmd"

# Read the Quarto file
text_data <- readLines(input_qmd, encoding = "UTF-8")

# Regular expression to detect citation keys (e.g., Carvalho_Colaço_Fortes_2006)
citation_pattern <- "\\b[A-Za-z]+(?:_[A-Za-z]+)*_\\d{4}\\b"

# Replace Mendeley-style citations with Quarto format
text_data <- str_replace_all(text_data, citation_pattern, function(m) {
    return(paste0("[@", m, "]"))  # Convert to Quarto format
})

# Save the modified text to a new Quarto file
writeLines(text_data, output_qmd, useBytes = TRUE)

# Print message
message("✅ Conversion complete! Your Quarto file is saved as: ", output_qmd)
