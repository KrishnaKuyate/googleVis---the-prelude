##Last data preps

# development and selection are available in the workspace

# Subset development with Year on or before 2008
development_complete <- subset(development,Year<=2008)

# Print out tail of development_complete
tail(development_complete)

# Subset development_complete: keep only countries in selection
development_motion <- subset(development_complete ,Country%in%selection)
tail(development_motion)