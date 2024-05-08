#Installing the package ggplot2
install.packages("ggplot2")
library(ggplot2)

#To display the head elements in the datset
head(Confidence_Interval)

#Calculate the confidence interval for Mean of Methane emissions for each year from 1990 to 2020
confidence_interval <- t.test(Confidence_Interval$Mean_Years)$conf.int

#Print the confidence interval
cat("Confidence Interval for Mean of Methane emissions from 1990 to 2020: [" , confidence_interval[1], " ,", confidence_interval[2], "]\n")

#Calculate the confidence interval for Mean of Methane emissions for each year from 1990 to 2010
ci <- t.test(Confidence_Interval$`Mean Before`)$conf.int

#Print the confidence interval
cat("Confidence Interval for Mean of Methane emissions from 1990 to 2010: [" , ci[1], " ,", ci[2], "]\n")

#Calculate the confidence interval for Mean of Methane emissions for each year from 2011 to 2020
cfi <- t.test(Confidence_Interval$`Mean After`)$conf.int

#Print the confidence interval
cat("Confidence Interval for Mean of Methane emissions from 2011 to 2020: [" , cfi[1], " ,", cfi[2], "]\n")
