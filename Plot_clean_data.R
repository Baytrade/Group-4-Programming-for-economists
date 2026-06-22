install.packages("ggplot2")
library(ggplot2)
data_clean <- read.csv(file.choose())
library(ggplot2)

ggplot(data = data_clean, aes(x = gem_gestand_inkomen, y = overgewicht_totaal, color = regio)) +
  geom_point(size = 4, alpha = 0.8) +
  theme_minimal() +
  labs(
    title = "Correlation Between Income and Overweight",
    x = "Average Standardized Income",
    y = "Total Overweight (%)",
    color = "Municipality"
  )
