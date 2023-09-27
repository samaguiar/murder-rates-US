#### ------------- Part 1 of homework ------------- ####

#create an array of 52,000 students
studentNames <- 1:52000

#print random sample of 10 names
sample(studentNames, 10)

#### ------------- Part 2 of homework ------------- ####

#set path to working directory
setwd("~/Desktop/university-of-the-cumberlands/R/hw1/murder_rates_US")

#create data set
murderData <- read.table("Murder.txt", header = TRUE)

#create data set for only murder variable
murder <- murderData$murder

#create data set without DC
murderData_no_DC <- murderData[murderData$state != "DC", ]
murder_no_DC <- murderData_no_DC$murder

#find the mean and standard deviation of the numerical data with DC
mean(murder)
sd(murder)

#summary with DC
summary(murder)

#boxplot with DC
boxplot(murder, main = "Murder Rates in U.S. States",
        ylab = "Murder Rate (in percentage)")

#find the trimmed mean and standard deviation of the numerical data without DC
mean(murder_no_DC)
sd(murder_no_DC)

#summary without DC
summary(murder_no_DC)

#boxplot without DC
boxplot(murder_no_DC, main = "Murder Rates in U.S. States (without DC)",
        ylab = "Murder Rate (in percentage)")
