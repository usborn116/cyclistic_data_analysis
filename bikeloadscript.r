install.packages("tidyverse")
install.packages("lubridate")
install.packages("ggplot2")
install.packages("readr")
library(tidyverse)  #helps wrangle data
library(lubridate)  #helps wrangle date attributes
library(ggplot2)  #helps visualize data
library(readr)

df <- read_csv("rides_vs_day.csv")

ggplot(df, mapping = aes(x=hr, y=avg_ride_len, color=rider_type))+
  + geom_point()+
  + geom_smooth()+
  + labs(title="Average Ride Length by Hour", subtitle="Average ride lengths by hour for casual and member riders")

df2 <- read_csv("ride_vs_mnth.csv")

ggplot(df2, mapping = aes(x=month, y=avg_ride_length, color=rider_type))+
  + geom_point()+
  + geom_smooth()+
  + labs(title="Average Ride Length By Month")+
  + theme(axis.text.x = element_text(angle = 90, hjust = 1))+
  + scale_x_discrete(limits=df2$month)

