#Making a subset for selected 5 countries
k=subset(Project_Dataset,select=c("Marshall Islands", "Hungary", "Sri Lanka", "Algeria", "Chile"))
i=c("Marshall Islands", "Hungary", "Sri Lanka", "Algeria", "Chile")

#Select the rows with NO emissions for the required years
h=k[c(4,34,64,94,124,154,184),]

#Assign a variable to the years to be mentioned in graphs
m=c("1990", "1995", "2000", "2005", "2010", "2015", "2020")

#Making a comparative scatter plot for all countries
plot(h)

#Making Bar graphs of NO emissions for respective countries 
barplot(h$`Marshall Islands`,names.arg = m,xlab="Years", ylab= "NO emissions (In Kilotons)", main = "Bar Graph for NO emissions for Marshall Islands from 1990 to 2020", col = "blue")
barplot(h$`Hungary`,names.arg = m,xlab="Years", ylab= "NO emissions (In Kilotons)", main = "Bar Graph for NO emissions for Hungary from 1990 to 2020", col = "blue")
barplot(h$`Sri Lanka`,names.arg = m,xlab="Years", ylab= "NO emissions (In Kilotons)", main = "Bar Graph for NO emissions for Sri Lanka from 1990 to 2020", col = "blue")
barplot(h$`Algeria`,names.arg = m,xlab="Years", ylab= "NO emissions (In Kilotons)", main = "Bar Graph for NO emissions for Algeria from 1990 to 2020", col = "blue")
barplot(h$`Chile`,names.arg = m,xlab="Years", ylab= "NO emissions (In Kilotons)", main = "Bar Graph for NO emissions for Chile from 1990 to 2020", col = "blue")