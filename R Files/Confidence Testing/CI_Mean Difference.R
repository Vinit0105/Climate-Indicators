#Installing the package ggplot2
install.packages("ggplot2")
library(ggplot2)

#To display the head elements in the datset
head(Confidence_Interval)
     
#Calculate means 
a <- c(236373.9844, 237627.46, 237201.193, 239002.3244, 241252.3868, 244743.4227, 246336.9012, 245254.994, 246342.7333, 247544.3339, 250824.2181, 251239.1129, 252424.9848, 258613.7587, 264890.5129, 270431.2252, 274171.8668, 278161.4003, 280912.8725, 279800.8753, 286761.5533)
mean_till2010 = mean(a)
b<- c(290753.8074, 293272.9248, 293374.6321, 296087.5993, 297660.4389, 298392.8332, 302229.9527, 306816.8572, 309252.419, 305831.4083)
mean_from2011 = mean(b)
       
#To calculate standard deviation
sd_till2010 <- sd(a)
sd_from2011 <- sd(b)
       
#To calculate length or sample size
ss_till2010 <- length(a)
ss_from2011 <- length(b)

#To calculate the standard error of difference between means
error <- sqrt((sd_till2010^2 / ss_till2010)- (sd_from2011^2/ss_from2011))

#To calculate degree of freedom
dof <- ss_till2010 + ss_from2011 -2
       
#To set a confidence Interval
cl<- 0.95

#To calculate margin of error
moe <- -qt((1+0.95)/2,29)*error
       
#To calculate the confidence interval
confidence_interval <- c(mean_till2010 - mean_from2011 - moe, mean_till2010 - mean_from2011 + moe)
       
#Print the confidence interval 
cat("Confidence Interval: [", confidence_interval[2], ",", confidence_interval[1],"]\n")