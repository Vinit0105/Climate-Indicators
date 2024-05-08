#Installing ggplot2 library and code to display head of elements
install.packages("ggplot2")
head(Probability_Distribution)
library(ggplot2)

#Create a histogram plot for Mean of temperature by creating 30 bins
histogram_plot <- ggplot(Probability_Distribution, aes(x=Mean_Temperature))+
  geom_histogram(fill="orange", colour="black", bins = 30)+
  labs(title = "Histogram for Mean Temperatures from 1990-2020", x="Temperature", y="Frequency")
print(histogram_plot)

#To identify the probability distribution for a desired value
histdata <- ggplot_build(histogram_plot)$data[[1]]
probabilities <- histdata$count / sum(histdata$count)
desiredvalue <- 12
desiredprobability <- 1- sum(probabilities[hist_data$x < desiredvalue])
cat("Probability of Mean Temperature >=", desiredvalue, ":", desiredprobability, "\n")

#Create a histogram plot for Mean of CO2 Emissions by creating 30 bins
histogram_plot <- ggplot(Probability_Distribution, aes(x=Mean_CO2))+
  geom_histogram(fill="orange", colour="black", bins = 30)+
  labs(title = "Histogram for Mean CO2 emissions from 1990-2020", x="CO2 emissions", y="Frequency")
print(histogram_plot)

#To identify the probability distribution for a desired value
hist_data <- ggplot_build(histogram_plot)$data[[1]]
probabilities <- hist_data$count / sum(hist_data$count)
desired_value <- 1000000
desired_probability <- 1 - sum(probabilities[hist_data$x < desired_value])
cat("Probability of Mean CO2 emissions >= ", desired_value, ": ", desired_probability, "\n")