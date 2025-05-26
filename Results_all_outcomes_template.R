### evs_score

```{r evs_score_1}
# Plot 1: Raw data
evs_score_hist_1 <- data_model %>% 
    #filter(
    #    evs_score < 300
    #) %>% 
    ggplot(aes(x = evs_score)) + 
    geom_histogram(bins = 50, fill = "skyblue", color = "black")

# Plot 2: Log-transformed data
evs_score_hist_2 <- data_model %>% 
    #filter(
    #    evs_score < 300
    #) %>%
    ggplot(aes(x = log1p(evs_score))) + 
    geom_histogram(bins = 50, fill = "lightgreen", color = "black")

# Combine side by side
evs_score_hist_1 + evs_score_hist_2 # library(patchwork)
```

```{r evs_score_2}
# LMM
evs_score_model <- lmer(log1p(evs_score) ~ allocation_group * visit + (1 | record_id), data = data_model)
check_collinearity(evs_score_model)

# Sensitivity analysis
evs_score_model_check <- sensitivity_check_lmer(
    model = evs_score_model,
    id_var = "record_id",
    top_n = 5)

# LMM Sensitivity
evs_score_model_sens <- update(object = evs_score_model,
                              subset = !(record_id %in% evs_score_model_check$influential_ids))
# Influential IDS
evs_score_model_check$influential_ids
```

```{r evs_score_3}
# Model comparison
summary(evs_score_model)
summary(evs_score_model_sens)
evs_score_model_check$comparison_table
performance::compare_performance(evs_score_model, evs_score_model_sens)
```

```{r evs_score_4, fig.width=10, fig.height=10}
performance::check_model(evs_score_model)
performance::check_model(evs_score_model_sens)
```

```{r evs_score_5}
# Get EMMs for each group at each visit
evs_score_emm <- emmeans::emmeans(
    evs_score_model_sens, 
    ~ allocation_group * visit
)

# Table of marginal means
evs_score_emm

# Pairwise comparisons: Between groups at each visit
contrast(evs_score_emm, method = "pairwise", by = "visit", adjust = "bonferroni")

# Pairwise comparisons: Changes over time within each group
contrast(evs_score_emm, method = "pairwise", by = "allocation_group", adjust = "bonferroni")

# Plot of marginal means
plot(evs_score_emm, comparisons = TRUE)
```

```{r evs_score_6}
ggplot(
    data = data_model, 
    aes(
        x = as.factor(visit),
        y = evs_score,
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
        !(record_id %in% evs_score_model_check$influential_ids)
    ) %>% 
    ggplot(
        aes(
            x = as.factor(visit),
            y = evs_score,
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
