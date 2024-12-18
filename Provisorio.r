library(tidyverse)

# Step 1: Load the raw data and the codebook
data <- read_csv("data_dvep.csv")
data_codebook <- read_csv("data_codebook.csv")

# Step 3: Create a function to filter the variables based on visit, form, and repeating instrument status
filter_variables <- function(visit = c("eleg", "V1", "V2", "V3"), include_repeating = NULL, form_name = NULL) {
  
  # Ensure the visit input is valid
  if (!all(visit %in% c("eleg", "V1", "V2", "V3"))) {
    stop("Invalid visit name. Choose from 'eleg', 'V1', 'V2', or 'V3'.")
  }
  
  # Ensure the form_name input is valid
  valid_form_names <- c("elegibility", "allocation", "demographic", "whoqol", "dass", "ecap", "evs", "alcohol", 
                        "tobacco", "eliminations", "diet_recall", "intake", "measures", "bp_limb", "bp", "bia", 
                        "handgrip", "dates", "conditions", "drugs", "old.drugs", "history", "medical", 
                        "symptoms", "phy.exam", "labs", "ecg", "compliance", "events", "followup", 
                        "conclusion", "annex", "tcle", "allergies")
  if (!is.null(form_name) && !all(form_name %in% valid_form_names)) {
    stop("Invalid form_name. Choose from: ", paste(valid_form_names, collapse = ", "))
  }
  
  # Filter codebook for included variables, by visit, form, and repeating instrument status if specified
  filtered_codebook <- data_codebook %>% 
    filter(
      included == 1, 
      rowSums(select(., all_of(visit))) > 0,  # At least one of the selected visits should have a 1
      if (!is.null(include_repeating)) repeating_instrument == include_repeating else TRUE,
      if (!is.null(form_name)) form_name_en == form_name else TRUE
    )
  
  # Return the filtered variable names
  filtered_vars <- filtered_codebook$variable
  
  return(filtered_vars)
}

# Step 4: Create a function to filter the raw data based on the selected variables, event_name, and form
filter_data <- function(visit = c("eleg", "V1", "V2", "V3"), include_repeating = NULL, form_name = NULL) {
  
  # Map visit names to actual event_name values
  mapped_visits <- case_when(
    visit == "eleg" ~ "eleg_arm_1",
    visit == "V1" ~ "1visit_arm_1",
    visit == "V2" ~ "2visit_arm_1",
    visit == "V3" ~ "3visit_arm_1",
    TRUE ~ visit
  )
  
  # Get the filtered variable names using the filter_variables function
  filtered_vars <- filter_variables(visit, include_repeating, form_name)
  
  # Filter the raw data to only include these columns and match event_name
  filtered_data <- data %>% 
    filter(event_name %in% mapped_visits) %>%
    filter(if (!is.null(include_repeating) && include_repeating == 0) is.na(repeat_instrument) | repeat_instrument == "" else TRUE) %>%
    filter(if (!is.null(include_repeating) && include_repeating == 1) !is.na(repeat_instrument) & repeat_instrument != "" else TRUE) %>%
    select(record_id, event_name, repeat_instrument, repeat_instance, all_of(filtered_vars)) %>%
    mutate(
      repeat_instrument = ifelse(is.na(repeat_instrument), "", repeat_instrument),
      repeat_instance = ifelse(repeat_instrument == "", NA, repeat_instance)
    )
  
  return(filtered_data)
}

# Usage Examples:

# 1. Filter data for the V1 visit, including only non-repeating instruments
filtered_data_V1_non_repeating <- filter_data(visit = "V1", include_repeating = 0)

# 2. Filter data for the V2 and V3 visits, including only repeating instruments
filtered_data_V2_V3_repeating <- filter_data(visit = c("V2", "V3"), include_repeating = 1)

# 3. Filter data for elegibility visit, regardless of repeating instrument status
filtered_data_elegibility <- filter_data(visit = "eleg")

# 4. Filter data for all visits, only for non-repeating instruments
filtered_data_all_visits_non_repeating <- filter_data(visit = c("eleg", "V1", "V2", "V3"), include_repeating = 0)

# 5. Filter data for a specific form within V1 visit
filtered_data_V1_specific_form <- filter_data(visit = "V1", form_name = "medicamentos_de_uso_habitual")
