#Confidence interval of proportions for Methane emissions in USA from 1990-2020
#Total number of years whose methane emissions is less than mean of methane emissions 
b <- 13

#Total number of years under consideration
total <- 31

#To calculate the sample proportion
sample_proportion <- b/total

#To calculate confidence interval of proportions by selecting 95% confidence interval
confidence_interval <- prop.test(b,total, conf.level = 0.95)$conf.int

#To print the confidence interval
cat("Confidence Interval: [" , confidence_interval[1], " ,", confidence_interval[2], "]\n")

#Confidence interval of proportions for Methane emissions in China from 1990-2020
#Total number of years whose methane emissions is less than mean of methane emissions 
a_china <- 16

#Total number of years under consideration
total_china <- 31

#To calculate the sample proportion
sample_proportion <- a_china/total_china

#To calculate confidence interval of proportions by selecting 95% confidence interval
ci <- prop.test(a_china,total_china, conf.level = 0.95)$conf.int

#To print the confidence interval
cat("Confidence Interval: [" , ci[1], " ,", ci[2], "]\n")