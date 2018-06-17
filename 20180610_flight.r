
library(dplyr)

library(ggplot2)

library(hflights)

library(reshape2)


data(hflights, package='hflights')

str(hflights)

flights.1 <- hflights %>% 
group_by(Origin, Dest) %>%
summarise(avg_delay = round(mean(DepDelay , na.rm = T), digit=3), avg_ArrDelay = round(mean(ArrDelay, na.rm = T), digits=3))

head(flights.1)

flights.melt <- melt(flights.1, id=c("Origin"), measure=c("avg_delay","avg_ArrDelay"), variable.name="Delay_type",
    value.name = 'Deley_time', na.rm = T)

head(flights.melt)

ggplot(flights.melt, aes(x=Deley_time, fill=Delay_type, alpha=0.00001)) + 
geom_density(colour = "lightgray", size = 0.00001) +
facet_wrap(~Origin, nrow=2)

flights.2 <- hflights %>%
group_by(Dest) %>%
summarise(num_DepDelay = sum(DepDelay  > 5, na.rm = T))

head(flights.2)

flights.3 <- flights.2[flights.2$num_DepDelay >= 2000, ]

head(flights.3)

flights.4 <- hflights[hflights$Dest == flights.3$Dest,]

head(flights.4,2)

flights.5 <- flights.4 %>%
group_by(Dest, Month) %>%
summarise(
  num_Cancelled=sum(Cancelled),
  num_Diverted=sum(Diverted),
  num_Air=length(Dest)-sum(Cancelled)-sum(Diverted)) 

flights.5

melt.hflights.5 <- melt(flights.5, id=c("Dest","Month"), measure=c("num_Cancelled","num_Diverted","num_Air"), na.rm=T)

head(melt.hflights.5)

melt2.hflights.5  <- melt.hflights.5 %>%
group_by(Month, variable) %>%
mutate(cnt = value/sum(value))

melt2.hflights.5

mm <- ggplot(melt2.hflights.5, aes(x=Month, y=cnt, fill=Dest)) + geom_bar(stat = "identity")
mm + facet_wrap(~variable,nrow=3)

str(hflights)

flights.6 <- hflights %>% 
group_by(UniqueCarrier) %>%
summarise(
  num_Cancelled=sum(Cancelled),
  num_Diverted=sum(Diverted),
  num_Air=length(Dest)-sum(Cancelled)-sum(Diverted)) 

flights.6 %>%
arrange(desc(num_Air))

flights.7 <- flights.6[order(-flights.6$num_Air),][1:3,]

flights.7

flights.8 <- hflights[hflights$UniqueCarrier==flights.7$UniqueCarrier,] %>%
group_by(UniqueCarrier) %>%
summarise(
avg_DepDelay = round(mean(DepDelay, na.rm=TRUE), digits=3), avg_ArrDelay = round(mean(ArrDelay, na.rm=TRUE), digits=3)
)

flights.8

flights.9 <- hflights[hflights$UniqueCarrier==flights.8[order(-flights.8$avg_ArrDelay),][1,]$UniqueCarrier,] %>%
group_by(Month, DayOfWeek) %>%
summarise(
avg_DepDelay = round(mean(DepDelay, na.rm=TRUE), digits=3), avg_ArrDelay = round(mean(ArrDelay, na.rm=TRUE), digits=3))

flights.9

flights.9.melt <-
melt(flights.9, id=c("Month","DayOfWeek"), measure=c("avg_ArrDelay","avg_DepDelay"), 
     variable.name="Delay_type", value.name="Delay_time", na.rm=T)

flights.9.melt <-melt(flights.9, id=c("Month","DayOfWeek"), measure=c("avg_ArrDelay","avg_DepDelay"), na.rm=T)

head(flights.9.melt)

dcast(flights.9.melt, Month + DayOfWeek ~ variable )

mmm <- ggplot(flights.9.melt, aes(x=DayOfWeek, y=Delay_time, group=Delay_type, 
                                  shape=Delay_type, color=Delay_type)) + geom_line() + geom_point()

mmm + facet_wrap(~Month,nrow=2)
