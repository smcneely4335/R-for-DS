##############################################################
##############################################################
##################### R for Data Science #####################
##############################################################
##############################################################

#############################################
### Ch.1: Data Visualization with ggplot2 ###
#############################################

# load tidyverse package: contains ggplot2
library(tidyverse)

# try just inputing the data into ggplot()
ggplot(data = mpg)

# how many rows/columns are in mtcars
nrow(mtcars)
ncol(mtcars) # or
glimpse(mtcars)

# make a scatterplot of cylinder vs. highway
ggplot(data = mpg) +
  geom_point(mapping = aes(x = cyl, y = hwy))

# make a scatterplot of class vs. drv
ggplot(data = mpg, mapping = aes(x = cty, y = hwy, color = displ < 5)) +
  geom_point()

# facet_wrap
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2) # same thing as (.~ class, nrow = 2); takes one var and nrow/ncol

# facet_grid
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl) # same argument as before, but take two arguments

# match the plots p.21
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = drv)) +
  geom_smooth(mapping = aes(linetype = drv), se = FALSE)
