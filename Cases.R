#libraries
library(tidyverse)
#data import
amazon<-read.csv("amazon_kenya_data.csv", stringsAsFactors = F)
View(amazon)


#Exploratory Data Analysis


#compare performance in terms of: branch, categories

amazon<-amazon %>% mutate(sales=ITEM.PRICE*QUANTITY.PURCHASED)

view(amazon)
names(amazon)

branch_comparison<-amazon %>%
  group_by(NAIVAS.BRANCH) %>% 
  summarise(total.sales=sum(sales),number.of.products=sum(QUANTITY.PURCHASED),customers=n_distinct(CUSTOMER.ID),total.transactions=n_distinct(RECEIPT.ID))  
view(branch_comparison) %>% 
  arrange(desc(total.sales)) %>% 
view(branch_comparison)

t<-read.csv(file="data/Kenya/locations.csv")

locations<-read.csv(file="Week 4/Supermarket Dataset.csv")

#libraries

library(tidyverse)

stocks <- tibble(
  year   = c(2015, 2015, 2015, 2015, 2016, 2016, 2016),
  qtr    = c(   1,    2,    3,    4,    2,    3,    4),
  return = c(1.88, 0.59, 0.35,   NA, 0.92, 0.17, 2.66)
)

View(stocks)

stocks1<-stocks

stocks1 %>% 

spread(year,return)


#gather

stocks2<-stocks1

stocks2 %>% 
  gather("2015", "2016", key = "year",value = "return")



  
  
  