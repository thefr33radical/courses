#Week 1 Introduction Example

#create first vector
country = c("China", "India", "China", "China", "India", "India", "China", "USA", "India", "China", "China", "USA", "India")

#create second vector of the same length as country
major = c("Food Science", "Electronics & Telecommunication", "Finance & Management", "Finance & Math", "Computer Engineering", "Engineering", "Accounting", "Statistics", "Electronics & Telecommunication", "Finance & Internationl Busiess", "Agricultural & Natural Resource Economics", "Iternational Studies & Economics", "Electronics & Telecommunication")

#create a data frame using our two vectors
our_df = data.frame(country, major)

#1. number of data rows in our data set
nrow(our_df)

#1.1any other ways to do this?

#2. what is the most represented country/majors in this class?
data.frame(table(country))
length(which(country=='India'))
#2.1 any other ways to do this?

#3.looking inside strings, how many majors had the word electronics. 
grep("Electronics", our_df$major)

#3.1 how you interpret the results?

#4.who are these students who study electronic?
our_df[5,]

#4.1 how you interpret the results?

#plot our countries
plot(our_df$country)

#can you troubleshoot this? what is missing? why is it missing?
library(maptools)
data(wrld_simpl)
myCountries = wrld_simpl@data$NAME %in% our_df$country
plot(wrld_simpl, col = c(gray(.80), "red")[myCountries+1])
