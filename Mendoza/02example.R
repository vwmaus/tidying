library(tidyverse)

?mpg

mpg
# to see more than 10 0bservations
print(mpg, n = 15)
# not for doing graph only read data
ggplot(data = mpg)
# to graph it needs to say aes refers to statistic
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))
# to see the nomber of columns
ncol (mpg)
# to know the number of rows
nrow (mpg)

ggplot(data = mpg) + geom_point(mapping = aes(x = class, y = drv))
# to add color
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class))
# if color goes outside the parenthesis everything is one color
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + facet_wrap(~ class, nrow = 2)


ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))


ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + facet_grid (~ class, nrow = 2)
# to graph more than one variable 
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + facet_grid(drv ~ cyl)
