#Making a subset for selected 5 countries
temp=subset(Project_Dataset,select=c("Albania", "Djibouti", "Congo, Rep.", "Burkina Faso", "Andorra"))

#Select rows with temperatures for the required years
temperature=temp[c(2,32,62,92,122,152,182),]

#Make a Boxplot for temperatures for selected countries
boxplot(temperature,xlab="Countries with highest maximum temperature",ylab="Temperature (°C)", main="Boxplot of Temperatures of 5 Countries with Highest Maximum Temperature", col="pink")
