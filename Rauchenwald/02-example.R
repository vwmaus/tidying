
library (tidyverse)

?mpg

mpg

ggplot(data = mpg)


ggplot(data = mpg) +
  geom_point(mapping = aes (x = displ, y = hwy))


ggplot(data = mpg) +
 geom_point(mapping = aes(x = displ, y = hwy, color = class))


ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))


ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = cyl, shape = drv))


ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)


ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class)





