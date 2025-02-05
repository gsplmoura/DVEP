# Load necessary libraries
library(officer)
library(stringr)

# Define file paths
input_docx <- "your_document.docx"   # Replace with your Word file
output_qmd <- "converted_document.qmd"

# Read the Word document
doc <- officer::read_docx(input_docx)

# Extract text from the document
text_data <- officer::docx_summary(doc)$text

# Regular expression to detect Mendeley citation keys (e.g., Smith_2020)
# This looks for words with underscores, digits, and letters (common Mendeley patterns)
citation_pattern <- "\\b[A-Za-z]+(?:_[A-Za-z]+)*_\\d{4}\\b"

# Replace Mendeley-style citations with Quarto format
text_data <- str_replace_all(text_data, citation_pattern, function(m) {
    return(paste0("[@", m, "]"))  # Convert to Quarto format
})

# Save as a Quarto file
writeLines(text_data, output_qmd)

# Print message
message("Conversion complete! Your Quarto file is saved as: ", output_qmd)
