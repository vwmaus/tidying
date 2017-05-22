install.packages("nycflights13")
library(nycflights13)


#load tidyverse
library(tidyverse)

#Select all flights on January 1st
filter(flights, month == 1, day == 1)

#Flights that departed in November or December
nov_dec <- filter(flights, month == 11| month == 12)

# Flights that departed in November or December
nov_dec <- filter(flights, month %in% c(11,12))


# Flights that were delayed on arrival or departure by more than two hours
not_delayed <- filter(flights, arr_delay > 120, dep_delay > 120)

# Make a scatterplot of dep_delay vs arr_delay with color given by carries
ggplot(data = not_delayed) + 
  geom_point(mapping = aes(x = dep_delay, y = arr_delay, color = carrier))
  
# Select columns by name
  select(flights, year, month, day)
  
# Select all columns between year and day
  select(flights, year:day)

#Select all columns expect those from year to day (inlcusive)
  select(flights, -(year:day))
  
# Select all columns starting with arr
  select(flights,starts_with("arr"))
  
  
# Rename columns using select
  select (flights, arrival_time = arr_time)
  
  
# Rename columns using rename
  rename (flights, arrival_time = arr_time)
  
# Add gain and hours
  mutate (flights,
          gain = arr_delay - dep_delay,
          air_hours = air_time / 60)

# Using varianles that you have just created
  mutate (flights,
          gain = arr_delay - dep_delay,
          air_hours = air_time / 60,
          gain_per_hour = gain / air_hours)
  
# Keep only the new variables
  C <-transmute (flights,
          gain = arr_delay - dep_delay,
          air_hours = air_time / 60,
          gain_per_hour = gain / air_hours)
  View(C)
  
# Create flight_speed tibble
flight_speed <- mutate (flights,
                        speed = distance / air_time * 60)

# Filter the flight time smaller than two hours and larger than one hour
flight_speed <- filter (flight_speed, air_time > 60, air_time < 120)
  
# Make a scatterplot of dep_delay vs speed
  ggplot(data = flight_speed) + 
    geom_point(mapping = aes(x = dep_delay, y = speed))
  
