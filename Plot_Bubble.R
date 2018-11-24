###googleVis - the prelude
library(googleVis)

?gvisMotionChart

# development_motion is pre-loaded in your workspace

# Create the interactive motion chart
motion_graph <- gvisMotionChart(development_motion,
                                idvar = "Country",
                                timevar ="Year")

# Plot motion_graph
str(development_motion)
plot(motion_graph)


# Update the interactive motion chart
motion_graph <- gvisMotionChart(development_motion,
                                idvar = "Country",
                                timevar = "Year",
                                xvar = "GDP",
                                yvar="LifeExpectancy",
                                sizevar="Population")

# Plot motion_graph
plot(motion_graph)


# Create a new column that corresponds to the log of the GDP column
development_motion$logGDP <-log(development_motion$GDP)

# Create the interactive motion chart with R and `gvisMotionChart())`
motion_graph <- gvisMotionChart(development_motion,
                                idvar = "Country",
                                timevar = "Year",
                                xvar = "logGDP",
                                yvar = "LifeExpectancy",
                                sizevar = "Population")

# Plot your new motion graph with the help of `plot()`
plot(motion_graph )