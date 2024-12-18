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
  valid_form_names <- c("elegibility", "tcle", "demographic", "whoqol", "dass", "ecap", "measures", "bp_limb", "bp", 
                        "bia", "handgrip", "eliminations", "allergies", "evs", "alcohol", "tobacco", "diet_recall", 
                        "intake", "dates", "allocation", "conditions", "drugs", "old.drugs", "history", "symptoms", 
                        "phy.exam", "labs", "ecg", "compliance", "events", "medical", "followup", "conclusion", "annex")
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
  valid_form_names <- c("elegibility", "tcle", "demographic", "whoqol", "dass", "ecap", "measures", "bp_limb", "bp", 
                        "bia", "handgrip", "eliminations", "allergies", "evs", "alcohol", "tobacco", "diet_recall", 
                        "intake", "dates", "allocation", "conditions", "drugs", "old.drugs", "history", "symptoms", 
                        "phy.exam", "labs", "ecg", "compliance", "events", "medical", "followup", "conclusion", "annex")
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
  
  # Map form_name to repeat_instrument values using a case_when structure
  mapped_form_name <- if (!is.null(form_name)) {
    case_when(
      form_name == "elegibility" ~ "elegibilidade",
      form_name == "tcle" ~ "tcle",
      form_name == "demographic" ~ "dados_demogrficos",
      form_name == "whoqol" ~ "questionrio_qualidade_de_vida",
      form_name == "dass" ~ "escore_de_depresso_ansiedade_e_estresse",
      form_name == "ecap" ~ "escala_de_compulso_alimentar",
      form_name == "measures" ~ "antropometria",
      form_name == "bp_limb" ~ "presso_arterial_determinao_do_membro_de_referncia",
      form_name == "bp" ~ "presso_arterial",
      form_name == "bia" ~ "impedncia_bioeltrica_corporal",
      form_name == "handgrip" ~ "fora_de_preenso_palmar",
      form_name == "eliminations" ~ "avaliao_nutricional",
      form_name == "allergies" ~ "alergia_alimentar",
      form_name == "evs" ~ "exercise_vital_sign",
      form_name == "alcohol" ~ "consumo_alcool",
      form_name == "tobacco" ~ "consumo_tabaco",
      form_name == "diet_recall" ~ "recordatrio_alimentar",
      form_name == "intake" ~ "avaliao_da_ingesto_alimentar",
      form_name == "dates" ~ "datas_importantes",
      form_name == "allocation" ~ "nmero_do_participante",
      form_name == "conditions" ~ "comorbidades",
      form_name == "drugs" ~ "medicamentos_de_uso_habitual",
      form_name == "old.drugs" ~ "medicamentos_prvios",
      form_name == "history" ~ "antecedentes_pessoais",
      form_name == "symptoms" ~ "sintomas",
      form_name == "phy.exam" ~ "exame_fsico",
      form_name == "labs" ~ "exames_laboratoriais",
      form_name == "ecg" ~ "eletrocardiograma",
      form_name == "compliance" ~ "adeso",
      form_name == "events" ~ "eventos_adversos",
      form_name == "medical" ~ "avaliao_mdica",
      form_name == "followup" ~ "contato_semanal",
      form_name == "conclusion" ~ "concluso",
      form_name == "annex" ~ "anexos",
      TRUE ~ NULL
    )
  } else {
    NULL
  }
  
  # Get the filtered variable names using the filter_variables function
  filtered_vars <- filter_variables(visit, include_repeating, form_name)
  
  # Filter the raw data to only include these columns and match event_name and form_name
  filtered_data <- data %>% 
    filter(event_name %in% mapped_visits) %>%
    filter(if (!is.null(include_repeating) && include_repeating == 0) is.na(repeat_instrument) | repeat_instrument == "" else TRUE) %>%
    filter(if (!is.null(include_repeating) && include_repeating == 1) !is.na(repeat_instrument) & repeat_instrument != "" else TRUE) %>%
    filter(if (!is.null(mapped_form_name)) repeat_instrument == mapped_form_name else TRUE) %>%
    select(record_id, event_name, repeat_instrument, repeat_instance, all_of(filtered_vars)) %>%
    mutate(
      repeat_instrument = ifelse(is.na(repeat_instrument), "", repeat_instrument),
      repeat_instance = ifelse(repeat_instrument == "", NA, repeat_instance)
    )
  
  return(filtered_data)
}