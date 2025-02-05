install.packages("RefManageR")
library(RefManageR)
library(here)


# Read the BibTeX file with validation
bib <- ReadBib(here("Thesis", "references.bib"), check = TRUE)

# Save the cleaned version of the .bib file
WriteBib(bib, file = here("Thesis", "references_cleaned.bib"))

