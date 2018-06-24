
install.packagesges("data.table", repos = "https://cran.r-project.org")

library(data.table)

library(hflights)

test <- hflights

for (i in 1:7){
    test <- rbind(test, test)
}

str(test)

test.table <- as.data.table(test)

class(test.table)

system.time(iris)

head(iris)

system.time(iris[, c(1,2)])

iris[, c(1,2)]

system.time(test[test$UniqueCarrier == "AA", ])

str(test.table)

setkey(test.table, UniqueCarrier)

system.time(test.table[J("AA"),])

setkey(test.table, UniqueCarrier, Origin)

system.time(test.table[J(c("AA", "OO"), "IAH")])

library(dplyr)

str(test)

system.time(test %>%
filter(UniqueCarrier == "AA" | UniqueCarrier == "OO", Origin=="IAH"))

system.time(test %>%
filter(UniqueCarrier == "AA" | UniqueCarrier == "OO", Origin=="IAH") %>%
summarise(mean(DepDelay, na.rm = T)))

test.table[J(c("AA", "OO"), "IAH"), mean(DepDelay, na.rm = T)]

system.time(test.table[J(c("AA", "OO"), "IAH"), mean(DepDelay, na.rm = T)])

0.74 / 0.03

?runif



DF <- data.frame(x = runif(26000000), y = rep(LETTERS, each=10000))

str(DF)

df <- data.frame(y = c("A", "B", "C"), z = c("a", "b", "c"))

DT <- as.data.table(DF)
dt <- as.data.table(df)

system.time(tmp.merge <- merge(DF, df, by = 'y'))

setkey(DT, y)

system.time(table.merge <- DT[dt, ])
