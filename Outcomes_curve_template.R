#### Curve

```{r labs_alkf_curve}
labs_alkf_curve_1 <- ggplot(
    data = data_model,                    # DATA
    aes(
        x = as.factor(visit),
        y = labs_alkf,                     # VARIABLE
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
    facet_wrap(~ allocation_group) + 
    coord_cartesian(ylim = c(0, 225))     # LIMIT Y

labs_alkf_curve_2 <- data_model %>%                # DATA 
    filter(                               # FILTER OUT INFLUENTIAL
        !(record_id %in% labs_alkf_model_check$influential_ids)
    ) %>% 
    ggplot(
        aes(
            x = as.factor(visit),         
            y = labs_alkf,                     # VARIABLE
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
    facet_wrap(~ allocation_group) + 
    coord_cartesian(ylim = c(0, 250))

labs_alkf_curve_1 + labs_alkf_curve_2
```