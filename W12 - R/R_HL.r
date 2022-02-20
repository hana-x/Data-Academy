#install packages
install.packages('forecast')
library('forecast')
install.packages('plot.matrix')
library('plot.matrix')
install.packages("ggplot2", dependencies = TRUE)
library('ggplot2')
install.packages("RColorBrewer")
library("RColorBrewer")

#1. Create data visualization using the ggplot in-built data sets

#see data
AirPassengers

#plot with trendline
plot(AirPassengers)
abline(reg=lm(AirPassengers~time(AirPassengers)))


#decomposition of time series data in component patterns (observed, trend, seasonal, random)
td <- ts(AirPassengers, frequency = 12) 
dd <- decompose(td, "multiplicative")
plot(dd)

#boxplot
boxplot(AirPassengers~cycle(AirPassengers, xlab="Month Number", ylab = "Number of Passengers ('000s)", main = "Monthly air passengers 1949-1960"))

#forecast of airline ticket sales using the ARIMA model
model<- auto.arima(AirPassengers)
forecast <- forecast(model, level=c(95), h=10*12)
plot(forecast)




#2. Additional Learning Tasks
#Write an R program to create three vectors a, b, c with 5 integers. Combine the three vectors to become a 3×5 matrix where each column represents a vector. Print the content of the matrix. Plot a graph and label correctly.
a <- c(1, 2, 3, 4, 5)
b <- c(6, 7, 8, 9, 10)
c <- c(11, 12, 13, 14)
matrix <- cbind(a,b,c)
print(matrix)
par(mar=c(5.1, 4.1, 4.1, 4.1)) #set margins
plot(matrix)


#Write a R program to create a Data frames which contain details of 5 employees and display the details. (Name, Age, Role and Length of service).
df <- data.frame (Name  = c("Jon", "Bill", "Maria", "Ben", "Tina"),
                  Age = c(23, 41, 32, 58, 26),
                  Role = c("CEO", "CFO", "Marketing Manager","Engineer","Analyst" ),
                  Length_of_service_yrs = c(5,3,5,2,1))
print(df)


#Import the GGPLOT 2 library and plot a graph using the qplot function. X axis is the sequence of 1:20 and the y axis is the x ^ 2. Label the graph appropriately. install.packages("ggplot2", dependencies = TRUE)
xvalues <- seq(1,20)
yvalues <- x^2
qplot(xvalues,yvalues, main="Exponential Increase")


#Create a simple bar plot of five subjects
grades <- runif(5,40,100)
subject <- c("English", "Math", "Geography", "History", "Politics")
barplot(grades, main="Grades by Subject", names.arg = subject, col = brewer.pal(n = 5, name="Pastel1"))


#Write a R program to take input from the user (name and age) and display the values.
{ name <- readline("What is your name?: "); age <- readline("What is your age?: ") }
print(paste("Your name is", name, "and you are", age, "years old. :)"))


#Write a R program to create a sequence of numbers from 20 to 50 and find the mean of numbers from 20 to 50 and sum of numbers.
num = seq(20,50)
mean_num = mean(num)
sum_num = sum(num)

#Write a R program to create a vector which contains 10 random integer values between -50 and +50
vec = runif(10, -50, 50)