
# Install and load package nycflights13 - Flights that Departed NYC in 2013
install.packages("nycflights13")
library(nycflights13)

# Data 
flights

# load tidyverse 
library(tidyverse)

# Select all flights on January 1st
filter(flights, month == 1, day == 1)

