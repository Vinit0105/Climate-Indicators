#Hypothesis testing for Methane emissions 

#Left Tailed Test:
#µ1= mean of methane emissions for 1990-2010
#µ2= mean of methane emissions for 2011-2020
#H0: µ1-µ2 = 0
#H1: µ1-µ2 < 0
result <- t.test(Hypothesis_Testing$`Methane Mean Before`, Hypothesis_Testing$`Methane Mean After`, alternative = "less")
print(result)

#Hypothesis testing for Total green house gas emissions 

#Left Tailed Test:
#µ1= mean of total greenhouse gas emissions for 1990-2010
#µ2= mean of total greenhouse gas emissions for 2011-2020
#H0: µ1-µ2 = 0
#H1: µ1-µ2 < 0

# Perform a one-sample t-test to compare the mean of TGGE After to the expected mean
result <- t.test(Hypothesis_Testing_TGGE$`Mean TGGE Before`, Hypothesis_Testing_TGGE$`Mean TGGE After`, alternative= "less")
print(result)

