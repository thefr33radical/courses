tryCatch(
  {
   
    library(ggplot2) # Data visualization
    library(readr) # CSV file I/O, e.g. the read_csv function
    library(gridExtra)
    library(grid)
    library(plyr)
      },error=function(e){
        
        install.packages("ggplot2")
       
        install.packages("readr") # CSV file I/O, e.g. the read_csv function
        install.packages("gridExtra")
        install.packages("grid")
        install.packages("plyr")
        
        
        
      })

data(iris)
head(iris)
summary(iris)


plot(iris)

plot_hist <- function()
{
  sepal_length<-iris$Sepal.Length
  hist(sepal_length)
  
  sepal_width<-iris$Sepal.Width
  hist(sepal_length)
  
  petal_length<-iris$Petal.Length
  hist(petal_length)
  
  petal_width<-iris$Petal.Width
  hist(petal_width)
  
 # hist(iris$Species)
}

plot_boxplot <- function()
{
  sepal_length<-iris$Sepal.Length
  boxplot(sepal_length)
  
  sepal_width<-iris$Sepal.Width
  boxplot(sepal_length)
  
  petal_length<-iris$Petal.Length
  boxplot(petal_length)
  
  petal_width<-iris$Petal.Width
  boxplot(petal_width)
  
  # hist(iris$Species)
}

plot_qqplot <- function()
{
  sepal_length<-iris$Sepal.Length
  sepal_width<-iris$Sepal.Width
  petal_length<-iris$Petal.Length
  petal_width<-iris$Petal.Width
  
  f<-c(sepal_width,sepal_length,petal_length,petal_width)
  
  for (i in 0:length(f)-1)
    for (j in 1:length(f))
      qqplot(f[i],f[j])
      
  
  # hist(iris$Species)
}


#plot_hist()
#plot_boxplot()
plot_qqplot()