#----------------------------------
#Second script
#Aline Soterroni
#22 may, 2017
#----------------------------------

library(tidyverse)

?mpg

mpg

print(mpg, n=15)

ggplot(data=mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data=mpg) +
  geom_point(mapping = aes(x = class, y = drv))

ggplot(data=mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data=mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = "blue", size = cyl, alpha = class, shape = drv))

ggplot(data=mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

ggplot(data=mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

ggplot(data=mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)


