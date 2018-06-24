
library(ggplot2)
library(dplyr)

dirs <- c("./Data/apt/")

c:\test 

c:\\test
c:/test

C:\Users\Playdata\Downloads

apt.temp1 <- read.csv("./Data/apt/apt_201701.csv", header = T, stringsAsFactors=F)

apt.temp <- read.csv(".\\Data\\apt\\apt_201701.csv", header = T, stringsAsFactors=F)

src_file <- list.files(dirs)

i <- 1
for(x in src_file){
    rt <- paste(dirs, "/", x, sep="")
    file_name <- paste("apt.", i, " <- 
        read.csv(\"", rt, "\"", ", header = T, stringsAsFactors=F)", sep="")
    print (file_name)
    eval(parse(text=file_name))
    i <- i + 1
}

i <- 1
for(x in 1:12){
    txt <- paste("apt.", x, sep="")
    print (txt)
    print (colnames(eval(parse(text = txt))))
    print ("=============")
}

apt <- data.frame()
for(x in 1:12){
    txt <- paste("rbind(apt, ", "apt.", x, ")", sep="")
    print (txt)
    apt <- eval(parse(text = txt))
    print ("=============")
}

getwd()

load("./apt.Rdata")

apt %>%
grep("서울", 시군구 )

grep("G", LETTERS)

grepl("G", LETTERS)

load("./apt.RData")

head(apt)

library(dplyr)

apt.seoul <- apt %>%
filter(grepl("서울", 시군구))

head(apt.seoul)

strsplit("서울특별시 강남구 개포동", "강남구")

sigungu <- strsplit(apt.seoul$시군구, " ")

str(sigungu)

library(plyr)

df <- ldply(sigungu)

head(df)

search()

detach("package:plyr", unload= T)

colnames(df) <- c("시", "구", "동")

df

apt.seoul.dong <- cbind(apt.seoul, df)

str(apt.seoul.dong)

save(list=ls(), file="./apt2.RData")

gsub(", ", "---", "aasdf, afadf")

apt.seoul.dong$거래금액.만원. <- 
    as.numeric(gsub('[$,]', "",apt.seoul.dong$거래금액.만원.))

grep("거래금액", colnames(apt.seoul.dong))

colnames(apt.seoul.dong)[9] <- c("거래금액")

str(apt.seoul.dong)

apt.seoul.dong %>%
group_by(구) %>%
summarise( 평균금액 = mean(거래금액)) %>%
arrange(desc(평균금액))

apt.max <- apt.seoul.dong %>%
group_by(구) %>%
summarise( 최대금액 = max(거래금액)) %>%
arrange(desc(최대금액))

apt.max

apt.min <- apt.seoul.dong %>%
group_by(구) %>%
summarise( 최소금액 = min(거래금액)) %>%
arrange(desc(최소금액))

apt.min

apt.seoul.dong[apt.seoul.dong$거래금액 == 780000, ]

kangnam <- apt.seoul.dong %>% 
filter(구 %in% c('강남구', '서초구', '송파구')) %>%
group_by(동) %>%
summarise(평균금액 = mean(거래금액), 최대금액 = max(거래금액), 
          최소금액 = min(거래금액),
         중간금액 = median(거래금액)) %>%
arrange(desc(평균금액))

kangnam

str(apt.seoul.dong)

kangnam <- apt.seoul.dong %>% 
filter(구 %in% c('강남구', '서초구', '송파구')) %>%
group_by(계약년월) %>%
summarise(평균금액 = mean(거래금액), 최대금액 = max(거래금액), 
          최소금액 = min(거래금액),
         중간금액 = median(거래금액)) %>%
arrange((계약년월))

library(reshape2)

apt.melt <- melt(kangnam, id=1)

str(apt.melt)

library(ggplot2)

options("scipen" = 100)

ggplot(apt.melt, aes(x = 계약년월, y = value, color = variable)) + 
geom_line(size = 1) +
geom_point() + 
scale_color_discrete(name = "집값") +
 theme(legend.position="right") +
ylab("거래금액") + 
ggtitle("강남 집값 추이") + 
theme(plot.title = element_text(hjust = 0.5, size= 20, face='bold', colour = "red"))

s
