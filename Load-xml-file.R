library(dplyr)
library(rvest)

url <- "https://raw.githubusercontent.com/latfa-senatham/my-first-xml/main/my_menu.XML"

url %>%
  read_html() %>%
  html_nodes("name") %>%
  html_text() -> "food_name"

url %>%
  read_html() %>%
  html_nodes("price") %>%
  html_text() -> "price"

url %>%
  read_html() %>%
  html_nodes("calorie") %>%
  html_text() -> "calorie"

df = data.frame(food_name, price, calorie)
View(df)





