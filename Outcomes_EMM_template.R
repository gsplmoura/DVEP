library(lmerTest)   # For p-values with lmer
library(emmeans)    # For marginal means and pairwise comparisons

# Fit your mixed model
model <- lmer(log1p(labs_alkp) ~ allocation_group * visit + (1 | record_id), data = data_model)

# Get estimated marginal means
emm <- emmeans(model, ~ allocation_group * visit)

# Pairwise comparisons between groups at each visit
pairs(emm, by = "visit")

# Pairwise comparisons between visits within each group
pairs(emm, by = "allocation_group")

# You can also get the full contrast table
contrast(emm, method = "pairwise")
```