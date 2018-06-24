
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
grep("����", �ñ��� )

grep("G", LETTERS)

grepl("G", LETTERS)

load("./apt.RData")

head(apt)

library(dplyr)

apt.seoul <- apt %>%
filter(grepl("����", �ñ���))

head(apt.seoul)

strsplit("����Ư���� ������ ������", "������")

sigungu <- strsplit(apt.seoul$�ñ���, " ")

str(sigungu)

library(plyr)

df <- ldply(sigungu)

head(df)

search()

detach("package:plyr", unload= T)

colnames(df) <- c("��", "��", "��")

df

apt.seoul.dong <- cbind(apt.seoul, df)

str(apt.seoul.dong)

save(list=ls(), file="./apt2.RData")

gsub(", ", "---", "aasdf, afadf")

apt.seoul.dong$�ŷ��ݾ�.����. <- 
    as.numeric(gsub('[$,]', "",apt.seoul.dong$�ŷ��ݾ�.����.))

grep("�ŷ��ݾ�", colnames(apt.seoul.dong))

colnames(apt.seoul.dong)[9] <- c("�ŷ��ݾ�")

str(apt.seoul.dong)

apt.seoul.dong %>%
group_by(��) %>%
summarise( ��ձݾ� = mean(�ŷ��ݾ�)) %>%
arrange(desc(��ձݾ�))

apt.max <- apt.seoul.dong %>%
group_by(��) %>%
summarise( �ִ�ݾ� = max(�ŷ��ݾ�)) %>%
arrange(desc(�ִ�ݾ�))

apt.max

apt.min <- apt.seoul.dong %>%
group_by(��) %>%
summarise( �ּұݾ� = min(�ŷ��ݾ�)) %>%
arrange(desc(�ּұݾ�))

apt.min

apt.seoul.dong[apt.seoul.dong$�ŷ��ݾ� == 780000, ]

kangnam <- apt.seoul.dong %>% 
filter(�� %in% c('������', '���ʱ�', '���ı�')) %>%
group_by(��) %>%
summarise(��ձݾ� = mean(�ŷ��ݾ�), �ִ�ݾ� = max(�ŷ��ݾ�), 
          �ּұݾ� = min(�ŷ��ݾ�),
         �߰��ݾ� = median(�ŷ��ݾ�)) %>%
arrange(desc(��ձݾ�))

kangnam

str(apt.seoul.dong)

kangnam <- apt.seoul.dong %>% 
filter(�� %in% c('������', '���ʱ�', '���ı�')) %>%
group_by(�����) %>%
summarise(��ձݾ� = mean(�ŷ��ݾ�), �ִ�ݾ� = max(�ŷ��ݾ�), 
          �ּұݾ� = min(�ŷ��ݾ�),
         �߰��ݾ� = median(�ŷ��ݾ�)) %>%
arrange((�����))

library(reshape2)

apt.melt <- melt(kangnam, id=1)

str(apt.melt)

library(ggplot2)

options("scipen" = 100)

ggplot(apt.melt, aes(x = �����, y = value, color = variable)) + 
geom_line(size = 1) +
geom_point() + 
scale_color_discrete(name = "����") +
 theme(legend.position="right") +
ylab("�ŷ��ݾ�") + 
ggtitle("���� ���� ����") + 
theme(plot.title = element_text(hjust = 0.5, size= 20, face='bold', colour = "red"))

s
