### 9.3.2 DYSLIPIDEMIA
#### Extract record IDs associated with dyslipidemia conditions
dyslipidemia_conditions <- I21_conditions_R |> 
    filter(str_detect(common_comorbidities, "C37967|C37971")) |>
    pull(record_id)

--> 29
[1]  1  2  2  4  5  9  9 10 10 13 26 28 28 33 34 34 37 41 44 46 49 50 50 53 53 54 58 58 61

#### Extract record IDs associated with antilipemic drugs
dyslipidemia_drugs <- I22_drugs_R |> 
    filter(str_detect(drugs_sql, 
                      "C29454|C66523_2|C47529|C61527|C87471"
    )
    ) |> 
    pull(record_id)

--> 12
[1]  1 10 13 26 33 41 50 53 54 54 58 61

#### Assign dyslipidemia based on conditions or drugs
data_d1_exclusive <- data_d1_exclusive |> 
    mutate(dyslipidemia = if_else(
        record_id %in% dyslipidemia_conditions, 
        1, 
        if_else(
            record_id %in% dyslipidemia_drugs, 
            1, 
            0
        )
    ))

rm(dyslipidemia_conditions)
rm(dyslipidemia_drugs)