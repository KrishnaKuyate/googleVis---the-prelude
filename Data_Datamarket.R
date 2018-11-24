##Part1

# Load rdatamarket and initialize client
library("rdatamarket")
dminit(NULL)

# Pull in life expectancy and population data
life_expectancy <- dmlist("15r2!hrp")
population <- dmlist("1cfl!r3d")

# Inspect life_expectancy and population with head() or tail()
head(life_expectancy)
tail(life_expectancy)
head(population)
tail(population)
# Load in the yearly GDP data frame for each country as gdp
dmlist("15c9!hd1")->yu
as.data.frame(yu)->gdp
# Inspect gdp with tail()
tail(gdp)


####Data set  for used:
life_expectancy
population
gdp