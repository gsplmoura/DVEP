### labs_alkp

```{r labs_alkp_1}
# Plot 1: Raw data
labs_alkp_hist_1 <- data_model %>% 
    #filter(
    #    labs_alkp < 300
    #) %>% 
    ggplot(aes(x = labs_alkp)) + 
    geom_histogram(bins = 50, fill = "skyblue", color = "black")

# Plot 2: Log-transformed data
labs_alkp_hist_2 <- data_model %>% 
    #filter(
    #    labs_alkp < 300
    #) %>%
    ggplot(aes(x = log1p(labs_alkp))) + 
    geom_histogram(bins = 50, fill = "lightgreen", color = "black")

# Combine side by side
labs_alkp_hist_1 + labs_alkp_hist_2 # library(patchwork)
```

```{r labs_alkp_2}
# LMM
labs_alkp_model <- lmer(log1p(labs_alkp) ~ allocation_group + visit + (1 | record_id), data = data_model)
check_collinearity(labs_alkp_model)

# Sensitivity analysis
labs_alkp_model_check <- sensitivity_check_lmer(
    model = labs_alkp_model,
    id_var = "record_id",
    top_n = 5)

# LMM Sensitivity
labs_alkp_model_sens <- update(object = labs_alkp_model,
                              subset = !(record_id %in% labs_alkp_model_check$influential_ids))
# Influential IDS
labs_alkp_model_check$influential_ids
```

```{r labs_alkp_3}
# Model comparison
summary(labs_alkp_model)
summary(labs_alkp_model_sens)
labs_alkp_model_check$comparison_table
performance::compare_performance(labs_alkp_model, labs_alkp_model_sens)
```

```{r labs_alkp_4, fig.width=10, fig.height=10}
performance::check_model(labs_alkp_model)
performance::check_model(labs_alkp_model_sens)
```

```{r labs_alkp_5}
# Get EMMs for each group at each visit
labs_alkp_emm <- emmeans::emmeans(
    labs_alkp_model_sens, 
    ~ allocation_group * visit
)

# Table of marginal means
labs_alkp_emm

# Pairwise comparisons: Between groups at each visit
contrast(labs_alkp_emm, method = "pairwise", by = "visit", adjust = "bonferroni")

# Pairwise comparisons: Changes over time within each group
contrast(labs_alkp_emm, method = "pairwise", by = "allocation_group", adjust = "bonferroni")

# Plot of marginal means
plot(labs_alkp_emm, comparisons = TRUE)
```

```{r labs_alkp_6}
ggplot(
    data = data_model, 
    aes(
        x = as.factor(visit),
        y = labs_alkp,
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
        !(record_id %in% labs_alkp_model_check$influential_ids)
    ) %>% 
    ggplot(
        aes(
            x = as.factor(visit),
            y = labs_alkp,
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
