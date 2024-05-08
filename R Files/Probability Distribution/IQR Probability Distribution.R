#Installing ggplot2 library and code to display head of elements
install.packages("ggplot2")
head(Probability_Distribution)
library(ggplot2)

#Create a histogram plot for IQR of TGGE by creating 30 bins
histogram_plot <- ggplot(Probability_Distribution, aes(x=IQR_TGGE))+
  geom_histogram(fill="orange", colour="black", bins = 30)+
  labs(title = "Histogram for IQR of TGGE from 1990-2020", x="Total Greenhouse Gas emissions", y="Frequency")
print(histogram_plot)

#To identify the probability distribution for a desired value
hist_data <- ggplot_build(histogram_plot)$data[[1]]
probabilities <- hist_data$count / sum(hist_data$count)
desired_value <- 300000
desired_probability <- 1 - sum(probabilities[hist_data$x < desired_value])
cat("Probability of IQR of TGGE >= ", desired_value, ": ", desired_probability, "\n")

#Create a histogram plot for IQR of REC by creating 30 bins
histogram_plot <- ggplot(Probability_Distribution, aes(x=IQR_REC))+
  geom_histogram(fill="orange", colour="black", bins = 30)+
  labs(title = "Histogram for IQR of REC from 1990-2020", x="Renewable Energy Consumption", y="Frequency")
print(histogram_plot)

#To identify the probability distribution for a desired value
hist_data <- ggplot_build(histogram_plot)$data[[1]]
probabilities <- hist_data$count / sum(hist_data$count)
desired_value <- 50
desired_probability <- 1 - sum(probabilities[hist_data$x < desired_value])
cat("Probability of Mean CO2 emissions >= ", desired_value, ": ", desired_probability, "\n")