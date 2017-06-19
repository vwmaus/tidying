library(tidyverse)
mpg %>% 
  .$year - .$cty 
#create tibble from existing data.frame
as_tibble(iris)
#create tibble from individual vectors
tibble ( x= 1:5,
         y= 1,
         z=x^2/y
         )
# create tibbles as rows
tibble ( 
  ~x, ~ y, ~ z,
  "a", 2, 3.6,
  "b", 1, 8.5
  )
# variable names
 
tb <- tibble(
  `:)`= "smile",
` `= "space" ,
`2000` = "number"
)
tb %>%
  select(`:)`)
#extract by name
tb %>%
  .$`:)`
#reading csv el primero se ree como tibble el segundo con punto es comod ataframe ojo
heights <-read_csv("data/heights.csv")
#diferentes tipos csv o csv2 si es punto y coma 
heights_2 <- read.csv("data/heights.csv")
class(heights$race)
class(heights_2$race)
#definir los tipos de columnas si es caracter, si es boleano si es integer para no cometer errores
# ademas se debe  poner  poner 
challenge <- read_csv(readr_example("challenge.csv"))
#show problems
problems(challenge)
# solution esto es para poder dar la cerizacion de las variables y poner q son
challenge <- read_csv(
  readr_example("challenge.csv"),
  col_types = cols(
    x = col_double(),
    y = col_date()
  )
)
#last observations sin embargo esto se puede ir cambiando si se desean ver mas
#esto ayuda para podr cambiar lso tipos de variables y no tener errores 
tail(challenge)

#write csv
write.csv(challenge, "data/challenge.csv")
View(challenge)