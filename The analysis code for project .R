# Load the package
library(datasets)
library(ggplot2)

# Load the data
data(mtcars)

# Checking the dataset
dim(mtcars)
str(mtcars)
names(cars)
head(mtcars)

# Clean the data
mtcars$cyl  <- factor(mtcars$cyl)
mtcars$vs   <- factor(mtcars$vs)
mtcars$gear <- factor(mtcars$gear)
mtcars$carb <- factor(mtcars$carb)
mtcars$am   <- factor(mtcars$am,labels=c("Auto","Manual"))

# View the data
head(mtcars)
summary(mtcars)


#regression
start_model <- lm(mpg~.,data = mtcars)
final_model <- step(start_model,direction = "both")
summary(final_model)
?par
barplot()