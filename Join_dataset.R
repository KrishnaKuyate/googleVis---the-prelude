# Load in the plyr package
library("plyr")

# Rename the Value for each dataset
names(gdp)[3] <- "GDP"
names(population)[3]<-"Population"
names(life_expectancy)[3]<-"LifeExpectancy"


# Use plyr to join your three data frames into one: development 
gdp_life_exp <- join(gdp,life_expectancy)
development <- join(gdp_life_exp,population)
