#Week 1 Introduction Example

#create first vector
country = c("China", "India", "China", "China", "India", "India", "China", "USA", "India", "China", "China", "USA", "India")

#create second vector of the same length as country
major <- c("Food Science", "Electronics & Telecommunication", "Finance & Management", "Finance & Math", "Computer Engineering", "Engineering", "Accounting", "Statistics", "Electronics & Telecommunication", "Finance & Internationl Busiess", "Agricultural & Natural Resource Economics", "Iternational Studies & Economics", "Electronics & Telecommunication")

#create a data frame using our two vectors
our_df = data.frame(country, major)

#1. number of data rows in our data set
nrow(our_df)

#1.1any other ways to do this?
NROW(our_df)

#2. what is the most represented country/majors in this class?

#count of the most represented country in this class
data.frame(table(country))
#length(which(country=='China'))

#count of the most represented major in this class
data.frame(table(major))
#length(which(major=="Electronics & Telecommunication"))

#the most represented country in this class
df1 <- table(our_df$country)
print(df1[which.max(df1)])

#the most represented majors in this class
df2 <- table(our_df$major)
print(df2[which.max(df2)])

#3.looking inside strings, how many majors had the word electronics. 
l <- c(grep("Electronics", our_df$major))

#3.1 how you interpret the results?
#The indexes of all elements from column major having the word Electronics is returned
    

#4.who are these students who study electronic?
# Question is unclear, I am  taking out all rows which study Electronics
our_df[5,]
print(our_df[which(our_df[,2]=="Electronics & Telecommunication"),])

#4.1 how you interpret the results?
# All the rows which contain Electronics & Telecommunication is printed

#plot our countries
plot(our_df$country)

#can you troubleshoot this? what is missing? why is it missing?
# package maptools is missing in the R so downloading it
#install.packages("maptools")
library(maptools)
data(wrld_simpl)
myCountries = wrld_simpl@data$NAME %in% our_df$country
plot(wrld_simpl, col = c(gray(.80), "red")[myCountries+1])
