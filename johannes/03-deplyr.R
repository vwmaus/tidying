install.packages("tidyverse")

install.packages("nycflights13")> 
  
ggplot(filter(flights, dep_delay>120, arr_delay>120)) + geom_point(mapping = aes(x=dep_delay, y=arr_delay, color=carrier))

select(flights, -(year:day))
select(flights, starts_with("arr"))

rename(flights, arrrival_time = arr_time)

mutate(flights, gain = arr_delay-dep_delay, air_hours = air_time/60, gain_per_hour = gain / air_hours)

transmute(flights, gain = arr_delay-dep_delay, air_hours = air_time/60, gain_per_hour = gain / air_hours)

f <- filter(mutate(flights, speed = distance/air_time*60), air_time < 120, air_time > 60)
ggplot(f) + geom_point(mapping=aes(x=dep_delay, y=speed))