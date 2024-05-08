##Making a subset for selected 5 countries
a=subset(Project_Dataset,select=c("Marshall Islands", "Hungary", "Ukraine", "Lesotho", "New Zealand"))
c<-c("Marshall Islands", "Hungary", "Ukraine", "Lesotho", "New Zealand")

#Select rows with CO2 emissions for the required years
b<-a[c(3,33,63,93,123,153,183),]

#Assign a variable to the years to be mentioned in graphs
m=c("1990", "1995", "2000", "2005", "2010", "2015", "2020")

#Making a comparative scatter plot for all countries
plot(b)

#Making Scatterplots of CO2 emissions for respective countries 
plot(x=as.numeric(m), y=b$`Marshall Islands`,xlab="Years", ylab= "CO2 emissions (in Kilotons)",main="Scatter Plot for CO2 emissions for Marshall Islands from 1990 to 2020",col="red")
plot(x=as.numeric(m), y=b$Hungary,xlab="Years", ylab= "CO2 emissions (in Kilotons)",main="Scatter Plot for CO2 emissions for Hungary from 1990 to 2020",col="red")
plot(x=as.numeric(m), y=b$Ukraine,xlab="Years", ylab= "CO2 emissions (in Kilotons)",main="Scatter Plot for CO2 emissions for Ukraine from 1990 to 2020",col="red")
plot(x=as.numeric(m), y=b$Lesotho,xlab="Years", ylab= "CO2 emissions (in Kilotons)",main="Scatter Plot for CO2 emissions for Lesotho from 1990 to 2020",col="red")
plot(x=as.numeric(m), y=b$`New Zealand`,xlab="Years", ylab= "CO2 emissions (in Kilotons)",main="Scatter Plot for CO2 emissions for New Zealand from 1990 to 2020",col="red")
