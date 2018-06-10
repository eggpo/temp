
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

ggplot(flights.melt, aes(x=Delay_time, fill=Delay_type)) + geom_density()

ggplot(flights.melt, aes(x=Delay_time, fill=Delay_type, alpha = 0.00000001)) + 
geom_density()

ggplot(flights.melt, aes(x=Delay_time, fill=Delay_type, alpha = 0.00000001)) + 
geom_density(colour = "lightgray", size = 0.00000001) +
facet_wrap(~Origin, nrow = 2)

head(hflights$DepDelay, 20)
head(hflights$DepDelay > 5, 20)
sum(hflights$DepDelay > 5, na.rm = T)

length(hflights$DepDelay)
length(hflights$DepDelay > 5)

flights.2 <- hflights %>% 
group_by(Dest) %>%
summarise( num_DepDelay = sum(DepDelay > 5, na.rm = T))

flights.2$num_DepDelay >= 2000
