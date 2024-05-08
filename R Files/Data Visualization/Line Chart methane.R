#Making a subset for selected 5 countries
a=subset(Project_Dataset,select = c("Vanuatu", "Hungary", "Ukraine", "Algeria", "Chad"))
c<-c("Vanuatu", "Hungary", "Ukraine", "Algeria", "Chad")

#Select the rows with Methane emissions for the required years
r<-a[c(5,35,65,95,125,155,185),]

#Assign a variable to the years to be mentioned in graphs
m=c("1990", "1995", "2000", "2005", "2010", "2015", "2020")

#Making a comparative scatter plot for all countries
plot(r)

#Making Line chart of methane emissions for respective countries 
plot(x=as.numeric(m),y=r$Vanuatu,type = 'l',xlab="Years",ylab="Methane emissions (in Kilotons)",main= "Line Chart for Methane emissions for Vanuatu from 1990 to 2020",col="orange")
plot(x=as.numeric(m),y=r$Hungary,type = 'l',xlab="Years",ylab="Methane emissions (in Kilotons)",main= "Line Chart for Methane emissions for Hungary from 1990 to 2020",col="orange")
plot(x=as.numeric(m),y=r$Ukraine,type = 'l',xlab="Years",ylab="Methane emissions (in Kilotons)",main= "Line Chart for Methane emissions for Ukraine from 1990 to 2020",col="orange")
plot(x=as.numeric(m),y=r$Algeria,type = 'l',xlab="Years",ylab="Methane emissions (in Kilotons)",main= "Line Chart for Methane emissions for Algeria from 1990 to 2020",col="orange")
plot(x=as.numeric(m),y=r$Chad,type = 'l',xlab="Years",ylab="Methane emissions (in Kilotons)",main= "Line Chart for Methane emissions for Chad from 1990 to 2020",col="orange")
