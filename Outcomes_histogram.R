```{r mean_bp_mean_hist}
# Plot 1: Raw data
mean_bp_mean_hist_1 <- data_model %>% 
    filter(
        mean_bp_mean < 300
    ) %>% 
    ggplot(aes(x = mean_bp_mean)) + 
    geom_histogram(bins = 50, fill = "skyblue", color = "black")

# Plot 2: Log-transformed data
mean_bp_mean_hist_2 <- data_model %>% 
    filter(
        mean_bp_mean < 300
    ) %>%
    ggplot(aes(x = log1p(mean_bp_mean))) + 
    geom_histogram(bins = 50, fill = "lightgreen", color = "black")

# Combine side by side
mean_bp_mean_hist_1 + mean_bp_mean_hist_2

# library(patchwork)
# p1 + p2         # → plots side by side (horizontally)
# p1 / p2         # → plots stacked (vertically)
# (p1 | p2) / p3  # → p1 and p2 on top row, p3 below
```