
library(tidyverse)
library(nycflights13)

# Flights that were delayed on arrival or departure by more than two hours
flights_delayed <- filter(flights, arr_delay > 120, dep_delay > 120 ) 

# Join flights_delayed and airlines by carrier
flights_delayed <- 
  left_join(x = flights_delayed, y = airlines, by = c("carrier", "carrier")) 

# Make a scatterplot of dep_delay vs arr_delay with color given by carrier
ggplot(data = flights_delayed) + 
  geom_point(mapping = aes(x = dep_delay, y = arr_delay, color = name))

# Improve the readability of R code with the pipe 
flights_delayed <- filter(flights, arr_delay > 120, dep_delay > 120 ) %>%
  left_join(y = airlines, by = c("carrier", "carrier")) 

# Make a scatterplot of dep_delay vs arr_delay with color given by carrier
ggplot(data = flights_delayed) + 
  geom_point(mapping = aes(x = dep_delay, y = arr_delay, color = name))

# Create a new tibble including new variables: 
# gain, air_hours, and gain_per_hour, month_name
flight_speed <- mutate(flights, 
       air_hours = air_time / 60,
       speed = distance / air_hours, 
       month_name = month.name[month]
)

# Join flight_speed and airlines by carrier
flight_speed <- 
  left_join(x = flight_speed, y = airlines, by = c("carrier", "carrier")) 

# Select the columns, name, air_hours, speed, and month_name
flight_speed <- select(flight_speed, name, air_hours, speed, month_name)

# Filter the flight time longer than one hour and shorter than two hours 
flight_speed <- filter(flight_speed, air_hours < 2, air_hours > 1)

# Make a scatterplot of dep_delay vs speed 
ggplot(data = flight_speed) + 
  geom_bar(mapping = aes(x = month_name, fill = name))

# Rewrite the code using pipes
flight_speed <- 
  mutate(flights, 
         air_hours = air_time / 60,
         speed = distance / air_hours, 
         month_name = month.name[month]) %>% 
  left_join(y = airlines, by = c("carrier", "carrier")) %>%
  # select(name, air_hours, speed, month_name) %>% 
  filter(air_hours < 2, air_hours > 1)

# Make a histogram of speed using 100 bins 
ggplot(data = flight_speed) + 
  geom_histogram(mapping = aes(x = speed), bins = 100)

# Make a box plot of speed and the airline names
ggplot(data = flight_speed) + 
  geom_boxplot(mapping = aes(x = name, y = speed)) + 
  theme(axis.text.x = element_text(angle = 90))



library(magrittr)

# Improve the readability of R code with the pipe 
flight_speed <- flights

flight_speed %<>% 
  mutate(air_hours = air_time / 60,
         speed = distance / air_hours, 
         month_name = month.name[month]) %>% 
  left_join(y = airlines, by = c("carrier", "carrier")) %>%
  select(name, air_hours, speed, month_name) %>% 
  filter(air_hours < 2, air_hours > 1)

# Make a scatterplot a bar plot month_name name 
ggplot(data = flight_speed) + 
  geom_bar(mapping = aes(x = month_name, fill = name))




