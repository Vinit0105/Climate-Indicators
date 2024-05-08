#Installing ggplot2 library and code to display head of elements
install.packages("ggplot2")
head(Probability_Distribution)
library(ggplot2)

#Create a histogram plot for Variance of Methane Emissions by creating 30 bins
histogram_plot <- ggplot(Probability_Distribution, aes(x=Variance_Methane))+
  geom_histogram(fill="orange", colour="black", bins = 30)+
  labs(title = "Histogram for Variance of Methane emissions from 1990-2020", x="Methane emissions", y="Frequency")
print(histogram_plot)

#To identify the probability distribution for a desired value
hist_data <- ggplot_build(histogram_plot)$data[[1]]
probabilities <- hist_data$count / sum(hist_data$count)
desired_value <- 8e+11
desired_probability <- 1 - sum(probabilities[hist_data$x < desired_value])
cat("Probability of Variance of Methane emissions >= ", desired_value, ": ", desired_probability, "\n")

#Create a histogram plot for Variance of NO Emissions by creating 30 bins
histogram_plot <- ggplot(Probability_Distribution, aes(x=Variance_NO))+
  geom_histogram(fill="orange", colour="black", bins = 30)+
  labs(title = "Histogram for Variance of NO emissions from 1990-2020", x="NO emissions", y="Frequency")
print(histogram_plot)

#To identify the probability distribution for a desired value
hist_data <- ggplot_build(histogram_plot)$data[[1]]
probabilities <- hist_data$count / sum(hist_data$count)
desired_value <- 8e+10
desired_probability <- 1 - sum(probabilities[hist_data$x < desired_value])
cat("Probability of Variance of NO emissions >= ", desired_value, ": ", desired_probability, "\n")