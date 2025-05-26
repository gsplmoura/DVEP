### labs_triglycerides

```{r labs_triglycerides_1}
# Plot 1: Raw data
labs_triglycerides_hist_1 <- data_model %>% 
    #filter(
    #    labs_triglycerides < 300
    #) %>% 
    ggplot(aes(x = labs_triglycerides)) + 
    geom_histogram(bins = 50, fill = "skyblue", color = "black")

# Plot 2: Log-transformed data
labs_triglycerides_hist_2 <- data_model %>% 
    #filter(
    #    labs_triglycerides < 300
    #) %>%
    ggplot(aes(x = log1p(labs_triglycerides))) + 
    geom_histogram(bins = 50, fill = "lightgreen", color = "black")

# Combine side by side
labs_triglycerides_hist_1 + labs_triglycerides_hist_2 # library(patchwork)
```

```{r labs_triglycerides_2}
# LMM
labs_triglycerides_model <- lmer(log1p(labs_triglycerides) ~ allocation_group * visit + (1 | record_id), data = data_model)
check_collinearity(labs_triglycerides_model)

# Sensitivity analysis
labs_triglycerides_model_check <- sensitivity_check_lmer(
    model = labs_triglycerides_model,
    id_var = "record_id",
    top_n = 5)

# LMM Sensitivity
labs_triglycerides_model_sens <- update(object = labs_triglycerides_model,
                              subset = !(record_id %in% labs_triglycerides_model_check$influential_ids))
# Influential IDS
labs_triglycerides_model_check$influential_ids
```

```{r labs_triglycerides_3}
# Model comparison
summary(labs_triglycerides_model)
summary(labs_triglycerides_model_sens)
labs_triglycerides_model_check$comparison_table
performance::compare_performance(labs_triglycerides_model, labs_triglycerides_model_sens)
```

```{r labs_triglycerides_4, fig.width=10, fig.height=10}
performance::check_model(labs_triglycerides_model)
performance::check_model(labs_triglycerides_model_sens)
```

```{r labs_triglycerides_5}
# Get EMMs for each group at each visit
labs_triglycerides_emm <- emmeans::emmeans(
    labs_triglycerides_model_sens, 
    ~ allocation_group * visit
)

# Table of marginal means
labs_triglycerides_emm

# Pairwise comparisons: Between groups at each visit
contrast(labs_triglycerides_emm, method = "pairwise", by = "visit", adjust = "bonferroni")

# Pairwise comparisons: Changes over time within each group
contrast(labs_triglycerides_emm, method = "pairwise", by = "allocation_group", adjust = "bonferroni")

# Plot of marginal means
plot(labs_triglycerides_emm, comparisons = TRUE)
```

```{r labs_triglycerides_6}
ggplot(
    data = data_model, 
    aes(
        x = as.factor(visit),
        y = labs_triglycerides,
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
    #coord_cartesian(ylim = c(10, 150))

data_model %>% 
    filter(
        !(record_id %in% labs_triglycerides_model_check$influential_ids)
    ) %>% 
    ggplot(
        aes(
            x = as.factor(visit),
            y = labs_triglycerides,
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
    #coord_cartesian(ylim = c(10, 150))
```
