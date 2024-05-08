#Installing and calling the corrplot library
install.packages("corrplot")
library(corrplot)

#Make a subset and select a country Turkiye
a= subset(Project_Dataset, select=c("Turkiye"))

#Select rows containing parameter 1: Total Greenhouse gas emissions
b= a[c(6,12,18,24,30,36,42,48,54,60,66,72,78,84,90,96,102,108,114,120,126,132,138,144,150,156,162,168,174,180,186),]

#Select rows containing parameter 2: Renewable energy consumption
c= a[c(7,13,19,25,31,37,43,49,55,61,67,73,79,85,91,97,103,109,115,121,127,133,139,145,151,157,163,169,175,181,187),]

#To calculate and print correlation
correlation<-cor(b,c)
print(correlation)

#Plotting correlation graph 
plot(x=as.numeric(b), y=as.numeric(c), xlab="Total Greenhouse gas emissions (in Kilotones)", ylab="Renewable Energy consumption (in percentage)", main="Correlation Plot of Turkiye", col="blue")
abline(lm(c~b), col="red")
legend("topright", legend = paste("Correlation=", round(correlation, 10)), col= "orange")

