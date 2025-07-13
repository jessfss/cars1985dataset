# This is an exercise from Learn R on Codecademy! See full questions on the Readme.
---
title: "1985 Cars Dataset Analysis"
---

```{r setup, include=FALSE}
library(readr)
library(dplyr)
```

# 1. What good is an analysis if we don’t even have the tools to perform the said analysis?
```{r}
# Packages loaded above in setup
```

# 2. Load the dataset into a dataframe called cars
```{r}
cars <- read_csv("cars85.csv")
```

# 3. Inspect the dataset
```{r}
head(cars)
summary(cars)
```

# 4. Remove the normalized_losses column
```{r}
cars <- select(cars, -normalized_losses)
```

##5. Print the column names
```{r}
colnames(cars)
```

# 6. Rename symboling to risk_factor
```{r}
cars <- rename(cars, risk_factor = symboling)
colnames(cars)
```

# 7. Create a threshold variable
```{r}
mpg_threshold <- 30
```

# 8. Add mpg_diff_from_threshold column
```{r}
cars <- cars %>%
  mutate(mpg_diff_from_threshold = highway_mpg - mpg_threshold)
head(cars)
```

# 9. Filter cars that exceed 30 MPG
```{r}
mpg_exceeds_threshold <- cars %>%
  filter(mpg_diff_from_threshold > 0)
head(mpg_exceeds_threshold)
```

# 10. Sort cars by highest MPG difference
```{r}
mpg_exceeds_threshold <- mpg_exceeds_threshold %>%
  arrange(desc(mpg_diff_from_threshold))
head(mpg_exceeds_threshold)
```

# 11. Order cars by engine size
```{r}
ordered_by_engine_size <- cars %>%
  arrange(desc(engine_size))
head(ordered_by_engine_size)
```

# 12. Choose a preferred make
```{r}
chosen_make <- "honda"  # You can change this
```

# 13. Filter by chosen make
```{r}
chosen_make_details <- cars %>%
  filter(make == chosen_make)
head(chosen_make_details)
```

# 14. Order chosen make by engine size
```{r}
chosen_make_details <- chosen_make_details %>%
  arrange(desc(engine_size))
head(chosen_make_details)
```

# 15. Conclusion
#By cleaning, exploring, and filtering the 1985 cars dataset, we were able to compare cars based on fuel efficiency, engine size, and manufacturer preferences — all useful insights to help choose the best car for a collection!
