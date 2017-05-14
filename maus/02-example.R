
# Load tidyverse 
library(tidyverse)

# toy data frame 
mpg

# toy data frame information 
?mpg 

# Visualize more than 10 observations  
print(mpg, n = 20)

# Run ggplot(data = mpg). What do you see?
ggplot(data = mpg)

# Firts plot example 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

# 1. How many rows are in mpg? How many columns?
nrow(mpg)
ncol(mpg)

# 2. What happens if you make a scatterplot of class vs drv?
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = class, y = drv))

# Adding a third variable to a two-dimensional plot
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

# What happend 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = 'blue')

# 1. Make a scatterplot of displ vs hwy and points size cyl.
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = cyl))

# 2. Make a scatterplot of displ vs hwy and points size cyl. Tip: use the alpha aesthetic.
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

# 3. Make a scatterplot of displ vs hwy and points shape drv.
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = drv))

# 4. What is wrong with this code? 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))

# 5. Correct graph 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")


