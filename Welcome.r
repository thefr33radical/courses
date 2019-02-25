
c <- data.frame(c(1,2),c(2,4),c(2,5),header=FALSE)
c

y =c[which(c[,2]==4),]

mean_ht = mean(height)
sd_ht = sd(height)

z_score = (71-mean_ht)/sd_ht


library(datasets)
data(iris)
summary(iris)

plot(iris)

hist(iris$sepal.width)
boxplot(mpg~cyl,data=mtcars, main="Car Milage Data", 
   xlab="Number of Cylinders", ylab="Miles Per Gallon")
qqnorm(my_data$len, pch = 1, frame = FALSE)
qqline(my_data$len, col = "steelblue", lwd = 2)

#interpret in words

print("Hello, world!")

mtcars

hist(mtcars$hp)

library(ggplot2)

qplot(mtcars$hp)

library(plotly)
set.seed(100)
d <- diamonds[sample(nrow(diamonds), 1000), ]
plot_ly(d, x = ~carat, y = ~price, color = ~carat,
        size = ~carat, text = ~paste("Clarity: ", clarity))

