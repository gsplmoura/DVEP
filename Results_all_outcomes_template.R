#### Plain Model
```{r mean_bp_mean_model_1, fig.width=10, fig.height=14}

mean_bp_mean_model <- lmer(log1p(mean_bp_mean) ~ allocation_group + visit + (1 | record_id), data = data_model)

summary(mean_bp_mean_model)

performance::check_model(mean_bp_mean_model)
```

#### Sensitivity analysis
```{r mean_bp_mean_model_2, fig.width=10, fig.height=14}
mean_bp_mean_model_check <- sensitivity_check_lmer(
    model = mean_bp_mean_model,
    id_var = "record_id",
    top_n = 5
)

# mean_bp_mean_model_check$cooks_table        #Cook's distance table
# mean_bp_mean_model_check$influential_ids
mean_bp_mean_model_check$comparison_table

mean_bp_mean_model_sens <- update(object = mean_bp_mean_model,
                   subset = !(record_id %in% mean_bp_mean_model_check$influential_ids)
)

performance::check_model(mean_bp_mean_model_sens)

```

#### Distributions

##### Plain model

```{r mean_bp_mean_distribution_1}
ggplot(
    data = data_model, 
    aes(
        x = as.factor(visit),
        y = mean_bp_mean,
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
    facet_wrap(~ allocation_group)
```

##### Sensitivity model

```{r mean_bp_mean_distribution_2}
data_model %>% 
    filter(
        !(record_id %in% mean_bp_mean_model_check$influential_ids)
    ) %>% 
    ggplot(
        aes(
            x = as.factor(visit),
            y = mean_bp_mean,
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
    facet_wrap(~ allocation_group)
```

