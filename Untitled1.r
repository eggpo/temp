
library(dplyr)
library(ggplot2)
library(reshape2)
data(hflights, package='hflights')

str(hflights)

flights.1 <- hflights %>% 
group_by(Origin, Dest) %>%
summarise(avg_delay = round(mean(DepDelay , na.rm = T), digit=3), 
          avg_ArrDelay = round(mean(ArrDelay, na.rm = T), digits=3))

head(flights.1)

flights.melt <- melt(flights.1, id=c("Origin"), 
                     measure=c("avg_delay","avg_ArrDelay"),
                     variable.name = "Delay_type",
                     value.name = "Delay_time",
                     na.rm = T)

tail(flights.1, 6)

tail(flights.melt)

ggplot(flights.melt, aes(x=Delay_time, fill=Delay_type)) 
