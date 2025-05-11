filter_variables <- function(
        visit = c("eleg", "V1", "V2", "V3"),  
        include_repeating = NULL,            
        form_name = NULL,                    
        filter_included = TRUE              
) {
    
    # Validate the 'visit' input: Ensure all provided visit names are valid
    if (!all(visit %in% c("eleg", "V1", "V2", "V3"))) {
        stop("Invalid visit name. Choose from 'eleg', 'V1', 'V2', or 'V3'.")
    }
    
    # Define valid form names for validation
    valid_form_names <- c(
        "eleg", "demographic", "whoqol", "dass", "ecap", "measures", "bp_limb", "bp", 
        "bia", "handgrip", "eliminations", "evs", "alcohol", "tobacco", "diet_recall", 
        "intake", "dates", "allocation", "conditions", "drugs", "old.drugs", "history", 
        "symptoms", "phy.exam", "labs", "ecg", "compliance", "events", "medical", 
        "followup", "conclusion"
    )
    
    # Validate the 'form_name' input: Ensure it contains only valid form names
    if (!is.null(form_name) && !all(form_name %in% valid_form_names)) {
        stop("Invalid form_name. Choose from: ", paste(valid_form_names, collapse = ", "))
    }
    
    # Filter the 'codebook_dvep' based on the specified criteria
    filtered_codebook <- codebook_dvep %>% 
        filter(
            # If filter_included is TRUE, filter for rows where 'included' equals 1
            if (filter_included) included == 1 else TRUE,
            
            # Retain rows where at least one of the selected visits has a value greater than 0
            rowSums(across(all_of(visit))) > 0,
            
            # If 'include_repeating' is specified, filter by the repeating_instrument column
            if (!is.null(include_repeating)) repeating_instrument == include_repeating else TRUE,
            
            # If 'form_name' is specified, filter by the form_name_en column
            if (!is.null(form_name)) form_name_en == form_name else TRUE
        )
    
    # Extract and return the 'variable' column from the filtered codebook
    filtered_vars <- filtered_codebook$variable
    
    return(filtered_vars)  # Return the filtered variable names
}


# Updated version of `filter_data()` — now robust to missing or mismatched column names

filter_data <- function(
        visit = c("eleg", "V1", "V2", "V3"), 
        include_repeating = NULL, 
        form_name = NULL) {
    
    # Map visit names to event_name values
    mapped_visits <- case_when(
        visit == "eleg" ~ "eleg_arm_1",
        visit == "V1" ~ "1visit_arm_1",
        visit == "V2" ~ "2visit_arm_1",
        visit == "V3" ~ "3visit_arm_1",
        TRUE ~ visit
    )
    
    cat("Mapped visits:\n")
    print(mapped_visits)
    
    # Map form_name to REDCap repeat_instrument values
    mapped_form_name <- if (!is.null(form_name)) {
        case_when(
            form_name == "eleg" ~ "elegibilidade",
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
            TRUE ~ form_name
        )
    } else {
        NULL
    }
    
    cat("Mapped form name:\n")
    print(mapped_form_name)
    
    # Get filtered variable names
    filtered_vars <- filter_variables(visit, include_repeating, form_name)
    
    cat("Filtered variable names:\n")
    print(filtered_vars)
    
    # Begin filtering
    filtered_data <- data %>%
        filter(event_name %in% mapped_visits) %>%
        {
            if (!is.null(include_repeating)) {
                if (include_repeating == 0) {
                    filter(., is.na(repeat_instrument) | repeat_instrument == "")
                } else if (include_repeating == 1) {
                    filter(., !is.na(repeat_instrument) & repeat_instrument != "")
                } else {
                    .
                }
            } else {
                .
            }
        } %>%
        filter(if (!is.null(mapped_form_name)) repeat_instrument == mapped_form_name else TRUE)
    
    # Columns that actually exist in the dataset
    valid_vars <- intersect(
        c("record_id", "event_name", "repeat_instrument", "repeat_instance", filtered_vars),
        colnames(filtered_data)
    )
    
    filtered_data <- filtered_data %>%
        dplyr::select(all_of(valid_vars)) %>%
        mutate(
            repeat_instrument = ifelse(is.na(repeat_instrument), "", repeat_instrument),
            repeat_instance = ifelse(repeat_instrument == "", NA, repeat_instance)
        )
    
    cat("Rows after filtering:\n")
    print(nrow(filtered_data))
    
    return(filtered_data)
}


filter_codebook <- function(form_name = c(
    "eleg", "tcle", "demographic", "whoqol", "dass", "ecap", "measures", 
    "bp_limb", "bp", "bia", "handgrip", "eliminations", "allergies", 
    "evs", "alcohol", "tobacco", "diet_recall", "intake", "dates", 
    "allocation", "conditions", "drugs", "old.drugs", "history", 
    "symptoms", "phy.exam", "labs", "ecg", "compliance", "events", 
    "medical", "followup", "conclusion", "annex"),
    included = 1) {
    
    # Ensure input is valid
    if (!all(form_name %in% c("eleg", "tcle", "demographic", "whoqol", "dass", "ecap", "measures", 
                              "bp_limb", "bp", "bia", "handgrip", "eliminations", "allergies", 
                              "evs", "alcohol", "tobacco", "diet_recall", "intake", "dates", 
                              "allocation", "conditions", "drugs", "old.drugs", "history", 
                              "symptoms", "phy.exam", "labs", "ecg", "compliance", "events", 
                              "medical", "followup", "conclusion", "annex"))) 
    {
        stop("Invalid form name")
    }
    
    if (included == 1) {
        codebook_form <- codebook_dvep %>% 
            filter(form_name_en %in% form_name & included == 1)
    } else {
        codebook_form <- codebook_dvep %>% 
            filter(form_name_en %in% form_name)
    }
    
    return(codebook_form)
}

convert_col_type <- function(data, codebook = codebook_dvep) {
    # Nested function to convert a single column
    convert_column <- function(column, type) {
        switch(type,
               f = as.factor(column),                      # Factor
               o = as.factor(column),                      # Factor
               c = as.character(column),                   # Character
               d = as.numeric(column),                     # Numeric
               i = as.integer(column),                     # Integer
               k = lubridate::ymd(column),                 # Date (YYYY-MM-DD)
               t = lubridate::ymd_hms(column),             # Date-Time (YYYY-MM-DD HH:MM:SS)
               h = lubridate::hms(column),                 # Time only (HH:MM:SS)
               n = as.numeric(as.character(column)),       # Coerce to Numeric
               l = as.logical(column),                     # Logical
               D = as.Date(column, format = "%Y-%m-%d"),   # Date with specified format
               T = as.POSIXct(column, format = "%Y-%m-%d %H:%M:%S"),  # Date-Time
               column  # Default (no change)
        )
    }
    # Apply conversion
    data <- data %>%
        mutate(
            across(
                .cols = all_of(intersect(colnames(data), codebook$variable)), # Ensures only common variables are processed
                .fns = ~ convert_column(.x, codebook$col_types[which(codebook$variable == cur_column())])
            )
        )
}

label_variables <- function(data, codebook, language = "pt") {
    # Determine the label column based on the language argument
    label_column <- ifelse(language == "en", "label_en", "label_pt")
    
    # Ensure column names are consistent
    codebook_vars <- codebook$variable
    codebook_labels <- codebook[[label_column]]
    
    # Identify common variables in both data and codebook
    common_vars <- intersect(names(data), codebook_vars)
    
    # Loop through the common variables and assign labels
    for (var in common_vars) {
        label <- codebook_labels[codebook_vars == var]
        attr(data[[var]], "label") <- label
    }
    
    return(data)
}

label_choices <- function(data, codebook = codebook_dvep) {
    # Ensure required libraries are loaded
    if (!requireNamespace("dplyr") || !requireNamespace("tidyr") ||
        !requireNamespace("stringr") || !requireNamespace("purrr")) {
        stop("Required libraries: dplyr, tidyr, stringr, purrr")
    }
    
    # 1. Filter codebook for relevant variables with col_types in "f" or "o"
    selected_codebook <- codebook %>% 
        filter(
            variable %in% colnames(data) &  # Variables present in data
                col_types %in% c("f", "o")     # col_types in "f" or "o"
        )
    
    # 2. Parse the `choices` column
    parsed_choices <- selected_codebook %>%
        rowwise() %>% 
        mutate(
            parsed = list(
                str_split(choices, " \\| ") %>%   # Split choices by "|"
                    unlist() %>%
                    map(~ str_split_fixed(.x, ", ", 2) %>%  # Split by ", " into two columns
                            as_tibble(.name_repair = "unique") %>%  # Ensure unique column names
                            setNames(c("raw_value", "label"))    # Name columns
                    ) %>%
                    bind_rows()  # Combine into a tibble
            )
        ) %>%
        select(variable, parsed) %>%
        unnest(parsed)  # Expand parsed choices into rows
    
    # 3. Create lookup tables for selected variables
    lookup_tables <- parsed_choices %>%
        group_by(variable) %>%
        summarize(
            lookup = list(setNames(label, raw_value)), .groups = "drop"
        ) %>%
        deframe()
    
    # 4. Replace raw values with labels in data, using "Unmatched" for unmatched values
    for (column_name in names(lookup_tables)) {
        if (column_name %in% colnames(data)) {  # Ensure column exists in data
            data[[column_name]] <- recode(        # Apply recode using the lookup table
                data[[column_name]],
                !!!lookup_tables[[column_name]],
                .default = "Unmatched"             # Set "Unmatched" as the placeholder for unmatched values
            )
        }
    }
    
    # Explicitly return the modified data
    return(data)
}

summarize_numerical <- function(data, group_col = NULL, use_labels = TRUE) {
    # Extract variable labels, falling back to variable names if labels are missing
    variable_labels <- sapply(names(data), function(var) {
        label <- attr(data[[var]], "label")
        if (is.null(label) || !use_labels) var else label
    }, simplify = TRUE)
    
    # Identify numeric columns
    numeric_cols <- data %>% select(where(is.numeric)) %>% names()
    
    if (!is.null(group_col)) {
        # Grouped summary
        summary <- data %>%
            group_by(across(all_of(group_col))) %>%
            summarise(across(
                all_of(numeric_cols),
                ~ paste0(
                    round(mean(.x, na.rm = TRUE), 1), 
                    " (", 
                    round(mean(.x, na.rm = TRUE) - 1.96 * sd(.x, na.rm = TRUE) / sqrt(sum(!is.na(.x))), 1), 
                    "–", 
                    round(mean(.x, na.rm = TRUE) + 1.96 * sd(.x, na.rm = TRUE) / sqrt(sum(!is.na(.x))), 1), 
                    ")"
                ),
                .names = "{.col}"
            )) %>%
            pivot_longer(-all_of(group_col), names_to = "Variable", values_to = "Value") %>%
            mutate(Variable = variable_labels[Variable]) %>%
            pivot_wider(names_from = all_of(group_col), values_from = Value)  # Pivot to wide format
    } else {
        # Ungrouped summary
        summary <- data %>%
            summarise(across(
                all_of(numeric_cols),
                ~ paste0(
                    round(mean(.x, na.rm = TRUE), 1), 
                    " (", 
                    round(mean(.x, na.rm = TRUE) - 1.96 * sd(.x, na.rm = TRUE) / sqrt(sum(!is.na(.x))), 1), 
                    "–", 
                    round(mean(.x, na.rm = TRUE) + 1.96 * sd(.x, na.rm = TRUE) / sqrt(sum(!is.na(.x))), 1), 
                    ")"
                ),
                .names = "{.col}"
            )) %>%
            pivot_longer(everything(), names_to = "Variable", values_to = "Value") %>%
            mutate(Variable = variable_labels[Variable])
    }
    
    return(summary)
}


summarize_categorical <- function(data, group_col = NULL, use_labels = TRUE) {
    # Extract variable labels, falling back to variable names if labels are missing
    variable_labels <- sapply(names(data), function(var) {
        label <- attr(data[[var]], "label")
        if (is.null(label) || !use_labels) var else label
    }, simplify = TRUE)
    
    # Identify categorical columns
    categorical_cols <- data %>% select(where(~ is.character(.x) || is.factor(.x))) %>% names()
    
    if (!is.null(group_col)) {
        # For grouped data
        summary <- lapply(categorical_cols, function(col) {
            data %>%
                group_by(across(all_of(group_col)), .drop = FALSE) %>%
                count(!!sym(col), .drop = FALSE, name = "Freq") %>%
                mutate(
                    Percent = round(100 * Freq / sum(Freq), 1),
                    Variable = variable_labels[col] # Use labels or names
                ) %>%
                rename(Level = !!sym(col)) %>%
                ungroup()
        }) %>%
            bind_rows()
    } else {
        # For ungrouped data
        summary <- lapply(categorical_cols, function(col) {
            data %>%
                count(!!sym(col), .drop = FALSE, name = "Freq") %>%
                mutate(
                    Percent = round(100 * Freq / sum(Freq), 1),
                    Variable = variable_labels[col] # Use labels or names
                ) %>%
                rename(Level = !!sym(col))
        }) %>%
            bind_rows()
    }
    
    # Arrange columns for consistency
    summary <- summary %>%
        select(Variable, Level, Freq, Percent, everything())
    
    return(summary)
}


compare_groups <- function(data, group_col = "allocation_group", use_labels = TRUE, return_df = FALSE) {
    
    # Extract variable labels, default to variable names if labels are missing
    variable_labels <- sapply(names(data), function(var) {
        label <- attr(data[[var]], "label") # Check for the 'label' attribute
        if (is.null(label) || !use_labels) var else label # Use variable name if label is missing
    }, simplify = TRUE)
    
    # Prepare results storage
    results <- data.frame(
        Variable = character(), # The variable being tested
        Test = character(),     # The type of test (t-test or chi-squared/Fisher's)
        Statistic = numeric(),  # The test statistic value
        P_value = numeric(),    # The p-value from the test
        stringsAsFactors = FALSE # Ensure strings are not converted to factors
    )
    
    # Loop through all columns in the data, excluding the grouping column
    for (var in setdiff(names(data), group_col)) {
        if (is.numeric(data[[var]])) {
            # Run t-test for numeric variables
            test_result <- t.test(data[[var]] ~ data[[group_col]])
            
            # Append the t-test results to the results data.frame
            results <- rbind(results, data.frame(
                Variable = variable_labels[var], # Use label or name
                Test = "t-test",                 
                Statistic = round(test_result$statistic, 2), 
                P_value = round(test_result$p.value, 4)
            ))
        } else if (is.factor(data[[var]]) || is.character(data[[var]])) {
            # Run chi-squared or Fisher's exact test
            contingency_table <- table(data[[var]], data[[group_col]])
            
            if (any(chisq.test(contingency_table)$expected < 5)) {
                # Use Fisher's exact test
                test_result <- fisher.test(contingency_table)
                results <- rbind(results, data.frame(
                    Variable = variable_labels[var],
                    Test = "Fisher's exact test",
                    Statistic = NA,
                    P_value = round(test_result$p.value, 4)
                ))
            } else {
                # Use chi-squared test
                test_result <- tryCatch(
                    chisq.test(contingency_table), 
                    error = function(e) list(statistic = NA, p.value = NA)
                )
                results <- rbind(results, data.frame(
                    Variable = variable_labels[var],
                    Test = "Chi-squared test",
                    Statistic = round(test_result$statistic, 2),
                    P_value = round(test_result$p.value, 4)
                ))
            }
        }
    }
    
    # If return_df = TRUE, return the results as a data frame
    if (return_df) {
        return(results)
    }
    
    # Return results as a gt table
    gt_table <- results %>%
        gt() %>%
        tab_header(
            title = "Hypothesis Test Results",
            subtitle = paste("Comparison of", group_col)
        ) %>%
        cols_label(
            Variable = "Variable",
            Test = "Test Type",
            Statistic = "Test Statistic",
            P_value = "P-value"
        )
    
    return(gt_table) # Return the formatted gt table
}