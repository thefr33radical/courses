# Enter path to csv
path <- readline(prompt="Enter path: " )

# load csv file into dataframe
data <- read.csv(path,header=TRUE,sep=",")
nrow(data)

# Extract only females
females = data[which(data[,1]=="Female"),]

# Compute mean, SD and z_score using the formulas
mean_ht = mean(females[[2]])
print(mean_ht)
sd_ht = sd(females[[2]])
print(sd_ht)

# Part 2
# Since its the datset of our choice we will be using the same dataset

# For Males
# Extract only males
males = data[which(data[,1]=="Male"),]

# Compute mean, SD and z_score using the formulas
mean_ht2 = mean(males[[2]])
print(mean_ht2)
sd_ht2 = sd(males[[2]])

males = males[[2]]
z_list2=c()
for (i in (0:length(males)))
  z_list2[i]= (males[i]-mean_ht2)/sd_ht2

#standardized score
z_list2

# For Females
# Extract only females
females = data[which(data[,1]=="Female"),]

# Compute mean, SD and z_score using the formulas
mean_ht = mean(females[[2]])
print(mean_ht)
sd_ht = sd(females[[2]])
print(sd_ht)

females = females[[2]]
z_list=c()
for (i in (0:length(females)))
  z_list[i]= (females[i]-mean_ht)/sd_ht

#standardized score
z_list