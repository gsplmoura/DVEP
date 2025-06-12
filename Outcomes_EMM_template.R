### ecap_score

```{r ecap_score_1}
# Plot 1: Raw data
ecap_score_hist_1 <- data_model_V1V3 %>% 
    #filter(
    #    ecap_score < 300
    #) %>% 
    ggplot(aes(x = ecap_score)) + 
    geom_histogram(bins = 50, fill = "skyblue", color = "black")

# Plot 2: Log-transformed data
ecap_score_hist_2 <- data_model_V1V3 %>% 
    #filter(
    #    ecap_score < 300
    #) %>%
    ggplot(aes(x = log1p(ecap_score))) + 
    geom_histogram(bins = 50, fill = "lightgreen", color = "black")

# Combine side by side
ecap_score_hist_1 + ecap_score_hist_2 # library(patchwork)
```

```{r ecap_score_2}
# LMM
ecap_score_model <- lmer(log1p(ecap_score) ~ allocation_group * visit + (1 | record_id), data = data_model_V1V3)
check_collinearity(ecap_score_model)

# Sensitivity analysis
ecap_score_model_check <- sensitivity_check_lmer(
    model = ecap_score_model,
    id_var = "record_id",
    top_n = 5)

# LMM Sensitivity
ecap_score_model_sens <- update(object = ecap_score_model,
                              subset = !(record_id %in% ecap_score_model_check$influential_ids))
# Influential IDS
ecap_score_model_check$influential_ids
```

```{r ecap_score_3}
# Model comparison
summary(ecap_score_model)
summary(ecap_score_model_sens)
ecap_score_model_check$comparison_table
performance::compare_performance(ecap_score_model, ecap_score_model_sens)
```

```{r ecap_score_4, fig.width=10, fig.height=10}
performance::check_model(ecap_score_model)
performance::check_model(ecap_score_model_sens)
```

#### Raw EMM

```{r ecap_score_raw_emm}
# Get EMMs for each group at each visit (Raw)
ecap_score_raw_emm <- emmeans::emmeans(
    ecap_score_model, 
    ~ allocation_group * visit
)

ecap_score_raw_emm <- regrid(ecap_score_raw_emm)

# Table of marginal means
ecap_score_raw_emm

# Pairwise comparisons: Between groups at each visit
emmeans::contrast(ecap_score_raw_emm, method = "pairwise", by = "visit", adjust = "bonferroni")

# Pairwise comparisons: Changes over time within each group
emmeans::contrast(ecap_score_raw_emm, method = "pairwise", by = "allocation_group", adjust = "bonferroni")

# Plot of marginal means
plot(ecap_score_raw_emm, comparisons = TRUE)
```

```{r ecap_score_sens_emm}
# Get EMMs for each group at each visit
ecap_score_emm <- emmeans::emmeans(
    ecap_score_model_sens, 
    ~ allocation_group * visit
)

ecap_score_emm <- regrid(ecap_score_emm)

# Table of marginal means
ecap_score_emm

# Pairwise comparisons: Between groups at each visit
emmeans::contrast(ecap_score_emm, method = "pairwise", by = "visit", adjust = "bonferroni")

# Pairwise comparisons: Changes over time within each group
emmeans::contrast(ecap_score_emm, method = "pairwise", by = "allocation_group", adjust = "bonferroni")

# Plot of marginal means
plot(ecap_score_emm, comparisons = TRUE)
```


```{r ecap_score_6}
ggplot(
    data = data_model_V1V3, 
    aes(
        x = as.factor(visit),
        y = ecap_score,
        group = record_id,
    )
) +
    geom_line(alpha = 0.5) +
    geom_point(alpha = 0.7) +
    geom_smooth(
        aes(group = allocation_group),
        method = "lm",
        se = TRUE,
        linewidth = 1
    ) +
    labs(title = "All data") +
    facet_wrap(~ allocation_group)

data_model_V1V3 %>% 
    filter(
        !(record_id %in% ecap_score_model_check$influential_ids)
    ) %>% 
    ggplot(
        aes(
            x = as.factor(visit),
            y = ecap_score,
            group = record_id,
        )
    ) +
    geom_line(alpha = 0.5) +
    geom_point(alpha = 0.7) +
    geom_smooth(
        aes(group = allocation_group),
        method = "lm",
        se = TRUE,
        linewidth = 1
    ) +
    labs(title = "Sensitivity analysis") +
    facet_wrap(~ allocation_group)
```