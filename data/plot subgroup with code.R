library(ggplot2)
csv_data <- "Stad,Leeftijdsgroep,Percentage
Amsterdam,< 15 jaar,14.8
Groningen,< 15 jaar,12.3
Maastricht,< 15 jaar,10.9
Utrecht,< 15 jaar,17.0
Amsterdam,15 tot 65 jaar,73.0
Groningen,15 tot 65 jaar,74.3
Maastricht,15 tot 65 jaar,68.5
Utrecht,15 tot 65 jaar,72.6
Amsterdam,≥ 65 jaar,12.3
Groningen,≥ 65 jaar,13.4
Maastricht,≥ 65 jaar,20.6
Utrecht,≥ 65 jaar,10.3"


df <- read.csv(text = csv_data)


df$Leeftijdsgroep <- factor(df$Leeftijdsgroep, 
                            levels = c("≥ 65 jaar", "15 tot 65 jaar", "< 15 jaar"),
                            labels = c("≥ 65 years", "15 to 65 years", "< 15 years"))


ggplot(df, aes(x = Stad, y = Percentage, fill = Leeftijdsgroep)) +
  geom_bar(stat = "identity", width = 0.7) +
  geom_text(aes(label = paste0(Percentage, "%")), 
            position = position_stack(vjust = 0.5), 
            color = "white", 
            fontface = "bold",
            size = 4) +
  scale_fill_manual(values = c("darkblue", "orange", "lightblue")) +
  labs(title = "Population Age Composition per City",
       x = "City",
       y = "Percentage (%)",
       fill = "Age Group") +
  theme_minimal() +
  theme(plot.title = element_text(face = "bold", size = 14, hjust = 0.5),
        axis.text = element_text(size = 11),
        legend.title = element_text(face = "bold"),
        legend.position = "right")
