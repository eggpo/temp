
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

flights.2 <- flights.2[flights.2$num_DepDelay >= 2000,]

head(flights.2)

head(hflights$Dest == flights.2$Dest)

head(hflights[hflights$Dest == flights.2$Dest,])

flights.4 <- hflights[hflights$Dest == flights.2$Dest,]

dim(flights.4)

head(flights.4$Dest)
head(flights.4$Cancelled)
head(flights.4$Diverted)

str(flights.4)

dim(flights.4)

length(flights.4$Cancelled > 1)

length(flights.4$Cancelled)

unique(hflights$Diverted)

dim(hflights)[1]

length(hflights$Year)

sum(hflights$Diverted)

sum(hflights$Diverted == 1)

sum(hflights$Diverted)

mode(hflights$Diverted)

flights.5 <- flights.4 %>% 
group_by(Dest, Month) %>%
summarise(
    num_Cancelled = sum(Cancelled),
    num_Diverted = sum(Diverted),
    num_Air = length(Dest) - sum(Cancelled) - sum(Diverted)
)

str(flights.5)

head(flights.5,2)

melt.hflights.5 <- melt(flights.5, c("Dest","Month"), 
                        c("num_Cancelled","num_Diverted","num_Air"), na.rm=T)

head(melt.hflights.5,1)

melt2.hflights.5 <- melt.hflights.5 %>%
group_by(Month, variable) %>%
mutate(cnt = value/sum(value))

head(melt2.hflights.5)

mm <- ggplot(melt2.hflights.5, aes(x=Month, y=cnt, fill=Dest)) + 
geom_bar(stat='identity')

mm

mm + facet_wrap(~ variable, nrow=3)

str(hflights)

flights.7 <- hflights %>% 
group_by(UniqueCarrier) %>%
summarise( 
    num_Air = length(Dest) - -sum(Cancelled)-sum(Diverted)
) %>%
arrange(desc(num_Air)) %>%
head(3)

flights.7

flights.7$UniqueCarrier

a <- c(1,2,3,4,5, NA)

mean(a, na.rm = T)

avg_DepDelay, avg_ArrDelay

tmp <- hflights[hflights$UniqueCarrier == flights.7$UniqueCarrier, ] %>%
group_by(UniqueCarrier) %>%
summarise(
    avg_DepDelay = round(mean(DepDelay, na.rm = T),  3),
    avg_ArrDelay = round(mean(ArrDelay, na.rm = T),  3)
)

carrier <- tmp %>% 
arrange(desc(avg_ArrDelay)) %>%
head(1)[1,1]

carrier

hflights[hflights$UniqueCarrier == carrier, ]

b <- c(123,14,5,6,47,3,53,57,462,536)

order(-b)

b[order(-b)][1]

tmp

head(mpg, 5)

head(mpg, 5)[1:3,5:7]

head(mpg, 5)[,]

tmp[order(-tmp$avg_ArrDelay),][1,]$UniqueCarrier

dim(hflights[hflights$UniqueCarrier == carrier, ])

hflights[hflights$UniqueCarrier == tmp[order(-tmp$avg_ArrDelay),][1,]$UniqueCarrier, ]
