
if(!requireNamespace("ggplot2")) install.packages('ggplot2', repos='http://cran.us.r-project.org')
if(!requireNamespace("dplyr")) install.packages('dplyr', repos='http://cran.us.r-project.org')

library(ggplot2)
library(dplyr)

file <- c("./Data/Subway")

src_file <- list.files(file)

src_file

i <- 1
for(x in src_file){
    rt <- paste(file, "/", x, sep="")
    file_name <- paste("Subway.", i, " <- read.csv(\"", rt, "\"", ", header = T)", sep="")
    print (file_name)
    eval(parse(text=file_name))
    i <- i + 1
}

i <- 1
for(x in 1:12){
    txt <- paste("Subway.", x, sep="")
    print (txt)
    print (colnames(eval(parse(text = txt))))
    print ("=============")
}

head(Subway.1, 2)

col <- colnames(Subway.1)

col[6:length(col)]

total <- ""
for (x in col[6:length(col)]){
    result <- sub("[.][.][.]", ".", x)
    result.1 <- paste(result, "=", "sum(", x, "),")
    total <- paste(total, " ", result.1)
}

total

Subway.1.trans <- Subway.1 %>% group_by(��¥, ȣ��, ����, ��.��) %>% summarise( X04.05 = sum( X04...05 ),   X05.06 = sum( X05...06 ),   
                                                             X06.07 = sum( X06...07 ),   X07.08 = sum( X07...08 ),   
                                                             X08.09 = sum( X08...09 ),   X09.10 = sum( X09...10 ),   
                                                             X10.11 = sum( X10...11 ),   X11.12 = sum( X11...12 ),   
                                                             X12.13 = sum( X12...13 ),   X13.14 = sum( X13...14 ),  
                                                             X14.15 = sum( X14...15 ),   X15.16 = sum( X15...16 ),  
                                                             X16.17 = sum( X16...17 ),   X17.18 = sum( X17...18 ),  
                                                             X18.19 = sum( X18...19 ),   X19.20 = sum( X19...20 ),  
                                                             X20.21 = sum( X20...21 ),   X21.22 = sum( X21...22 ),  
                                                             X22.23 = sum( X22...23 ),   X23.24 = sum( X23...24 ),  
                                                             X00.01 = sum( X00...01 ),   X01.02 = sum( X01...02 ),  
                                                             X02.03 = sum( X02...03 ),   X03.04 = sum( X03...04 ))

Subway.2.trans <- Subway.2 %>% group_by(��¥, ȣ��, ����, ��.��) %>% summarise( X04.05 = sum( X04...05 ),   X05.06 = sum( X05...06 ),   
                                                             X06.07 = sum( X06...07 ),   X07.08 = sum( X07...08 ),   
                                                             X08.09 = sum( X08...09 ),   X09.10 = sum( X09...10 ),   
                                                             X10.11 = sum( X10...11 ),   X11.12 = sum( X11...12 ),   
                                                             X12.13 = sum( X12...13 ),   X13.14 = sum( X13...14 ),  
                                                             X14.15 = sum( X14...15 ),   X15.16 = sum( X15...16 ),  
                                                             X16.17 = sum( X16...17 ),   X17.18 = sum( X17...18 ),  
                                                             X18.19 = sum( X18...19 ),   X19.20 = sum( X19...20 ),  
                                                             X20.21 = sum( X20...21 ),   X21.22 = sum( X21...22 ),  
                                                             X22.23 = sum( X22...23 ),   X23.24 = sum( X23...24 ),  
                                                             X00.01 = sum( X00...01 ),   X01.02 = sum( X01...02 ),  
                                                             X02.03 = sum( X02...03 ),   X03.04 = sum( X03...04 ))

Subway.3.trans <- Subway.3 %>% group_by(��¥, ȣ��, ����, ��.��) %>% summarise( X04.05 = sum( X04...05 ),   X05.06 = sum( X05...06 ),   
                                                             X06.07 = sum( X06...07 ),   X07.08 = sum( X07...08 ),   
                                                             X08.09 = sum( X08...09 ),   X09.10 = sum( X09...10 ),   
                                                             X10.11 = sum( X10...11 ),   X11.12 = sum( X11...12 ),   
                                                             X12.13 = sum( X12...13 ),   X13.14 = sum( X13...14 ),  
                                                             X14.15 = sum( X14...15 ),   X15.16 = sum( X15...16 ),  
                                                             X16.17 = sum( X16...17 ),   X17.18 = sum( X17...18 ),  
                                                             X18.19 = sum( X18...19 ),   X19.20 = sum( X19...20 ),  
                                                             X20.21 = sum( X20...21 ),   X21.22 = sum( X21...22 ),  
                                                             X22.23 = sum( X22...23 ),   X23.24 = sum( X23...24 ),  
                                                             X00.01 = sum( X00...01 ),   X01.02 = sum( X01...02 ),  
                                                             X02.03 = sum( X02...03 ),   X03.04 = sum( X03...04 ))

Subway.4.trans <- Subway.4 %>% group_by(��¥, ȣ��, ����, ��.��) %>% summarise( X04.05 = sum( X04...05 ),   X05.06 = sum( X05...06 ),   
                                                             X06.07 = sum( X06...07 ),   X07.08 = sum( X07...08 ),   
                                                             X08.09 = sum( X08...09 ),   X09.10 = sum( X09...10 ),   
                                                             X10.11 = sum( X10...11 ),   X11.12 = sum( X11...12 ),   
                                                             X12.13 = sum( X12...13 ),   X13.14 = sum( X13...14 ),  
                                                             X14.15 = sum( X14...15 ),   X15.16 = sum( X15...16 ),  
                                                             X16.17 = sum( X16...17 ),   X17.18 = sum( X17...18 ),  
                                                             X18.19 = sum( X18...19 ),   X19.20 = sum( X19...20 ),  
                                                             X20.21 = sum( X20...21 ),   X21.22 = sum( X21...22 ),  
                                                             X22.23 = sum( X22...23 ),   X23.24 = sum( X23...24 ),  
                                                             X00.01 = sum( X00...01 ),   X01.02 = sum( X01...02 ),  
                                                             X02.03 = sum( X02...03 ),   X03.04 = sum( X03...04 ))

Subway.5.trans <- Subway.5 %>% group_by(��¥, ȣ��, ����, ��.��) %>% summarise( X04.05 = sum( X04...05 ),   X05.06 = sum( X05...06 ),   
                                                             X06.07 = sum( X06...07 ),   X07.08 = sum( X07...08 ),   
                                                             X08.09 = sum( X08...09 ),   X09.10 = sum( X09...10 ),   
                                                             X10.11 = sum( X10...11 ),   X11.12 = sum( X11...12 ),   
                                                             X12.13 = sum( X12...13 ),   X13.14 = sum( X13...14 ),  
                                                             X14.15 = sum( X14...15 ),   X15.16 = sum( X15...16 ),  
                                                             X16.17 = sum( X16...17 ),   X17.18 = sum( X17...18 ),  
                                                             X18.19 = sum( X18...19 ),   X19.20 = sum( X19...20 ),  
                                                             X20.21 = sum( X20...21 ),   X21.22 = sum( X21...22 ),  
                                                             X22.23 = sum( X22...23 ),   X23.24 = sum( X23...24 ),  
                                                             X00.01 = sum( X00...01 ),   X01.02 = sum( X01...02 ),  
                                                             X02.03 = sum( X02...03 ),   X03.04 = sum( X03...04 ))

colnames(Subway.1.trans)
colnames(Subway.2.trans)
colnames(Subway.3.trans)
colnames(Subway.4.trans)
colnames(Subway.5.trans)

#subway.01.trans[-c(2)]
Subway.1.trans <-subset(Subway.1.trans, select = -ȣ��)[, c(2,1,3, 5:(length(Subway.1.trans)-3))]
Subway.2.trans <-subset(Subway.2.trans, select = -ȣ��)[, c(2,1,3, 5:(length(Subway.2.trans)-3))]
Subway.3.trans <-subset(Subway.3.trans, select = -ȣ��)[, c(2,1,3, 5:(length(Subway.3.trans)-3))]
Subway.4.trans <-subset(Subway.4.trans, select = -ȣ��)[, c(2,1,3, 5:(length(Subway.4.trans)-3))]
Subway.5.trans <-subset(Subway.5.trans, select = -ȣ��)[, c(2,1,3, 5:(length(Subway.5.trans)-3))]

colnames(Subway.1.trans)
colnames(Subway.2.trans)
colnames(Subway.3.trans)
colnames(Subway.4.trans)
colnames(Subway.5.trans)

names(Subway.1.trans) <- gsub(x = names(Subway.1.trans), pattern = "��.��", replacement = "����")  
names(Subway.2.trans) <- gsub(x = names(Subway.2.trans), pattern = "��.��", replacement = "����")  
names(Subway.3.trans) <- gsub(x = names(Subway.3.trans), pattern = "��.��", replacement = "����")  
names(Subway.4.trans) <- gsub(x = names(Subway.4.trans), pattern = "��.��", replacement = "����")  
names(Subway.5.trans) <- gsub(x = names(Subway.5.trans), pattern = "��.��", replacement = "����")  

colnames(Subway.1.trans)
colnames(Subway.2.trans)
colnames(Subway.3.trans)
colnames(Subway.4.trans)
colnames(Subway.5.trans)

total.df <- rbind(Subway.1.trans, Subway.2.trans, Subway.3.trans, Subway.4.trans, Subway.5.trans)

head(total.df,5)
tail(total.df,5)

total.df.2 <- rbind(total.df, Subway.6, Subway.7, Subway.8, Subway.9, Subway.10, Subway.11)

dim(total.df)
dim(total.df.2)

tail(total.df.2)

head(Subway.12)

names(Subway.12) <- gsub(x = names(Subway.12), pattern = "��", replacement = "")  

colnames(Subway.11)
colnames(Subway.12)

subway <- rbind(total.df.2, Subway.12)

head(subway, 3)
tail(subway,3)
dim(subway)

write.csv(subway, "./Data/all_subway.csv")

a <- '2016-01-01'

a

substr(a,1,7)

library(ggplot2)

subway <- read.csv("./Data/all_subway.csv", header = T, check.names=F)

str(subway)

subway <- subway[, -c(1)]

str(subway)

head(subway)
tail(subway)
colnames(subway)

unique(subway$����)
grep( "����", unique(subway$����))

unique(subway$����)[11]

head(subway,3)

kangnam <- subway[ subway$���� == "����(222)", ]

dim(kangnam)

head(kangnam)


kangnam$sum <- apply(kangnam[ , c(4:length(kangnam))], 1, sum)

head(kangnam)

kangnam <- kangnam %>% 
mutate( �� = substr(kangnam$��¥, 1, 7))

kangnam.graph <- kangnam %>% group_by(��) %>% summarise( Month.Total = sum(sum))

kangnam.graph

barplot(kangnam.graph$Month.Total, names.arg = kangnam.graph$��)

ggplot(kangnam.graph, aes(x=��, y=Month.Total)) +
geom_bar(stat='identity') +
theme(axis.text.x=element_text(angle=0))

# �ڸ��� �ɼ����� �Ϲ����� ���ڷ� ����
options("scipen" = 100)

ggplot(kangnam.graph, aes(x=��, y=Month.Total)) +
geom_bar(stat='identity') +
theme(axis.text.x=element_text(angle=0))

kangnam.graph.2 <- kangnam %>% group_by(��, ����) %>% summarise( Month.Total = sum(sum))

kangnam.graph.2
colnames(kangnam.graph.2)

ggplot(kangnam.graph.2, aes(x=��, y=Month.Total, fill=����)) +
geom_bar(stat='identity') +
theme(axis.text.x=element_text(angle=0))

ggplot(kangnam.graph.2, aes(x=��, y=Month.Total, fill=����)) +
geom_bar(stat='identity', position = "dodge") 

ggplot(kangnam.graph.2, aes(x=��, y=Month.Total, fill=����)) +
geom_bar(stat='identity', position = "dodge", color = 'black')  +
#scale_fill_brewer(palette = "Pastel1")
scale_fill_brewer(direction = -1) 

library(scales)

comma

kangnam.graph.2

ggplot(kangnam.graph.2, aes(x=��, y=Month.Total, fill=����)) +
geom_bar(stat='identity', position = "dodge", color = 'tomato1')  +
scale_fill_brewer(palette = "Set3") + 
theme(axis.text.x=element_text(angle=45))+
scale_y_continuous(labels = comma) + 
ylab("ž���ڼ�")

ggplot(kangnam.graph.2, aes(x=��, y=Month.Total, fill=����)) +
geom_bar(stat='identity', position = "dodge", color = 'black')  +
theme(axis.text.x=element_text(angle=45))+
ylab("ž���ڼ�") + 
scale_fill_manual(values=c("#669933", "#FFCC66"))

head(subway,2)
dim(subway)

subway$sum <- apply(subway[ , c(4:length(subway))], 1, sum)

head(subway)

subway.month <- subway %>% group_by(����) %>% summarise( station.total = sum(sum))

subway.month <- subway.month %>% arrange(desc(station.total))

subway.15 <- subway.month[1:15,]

subway.15

ggplot(subway.15, aes(x=����, y=station.total)) +
geom_bar(stat = 'identity') + 
theme(axis.text.x=element_text(angle=45))

library(scales)

comma

p <- ggplot(subway.15, aes(x=reorder(����, station.total), y=station.total)) +
geom_bar(stat = 'identity') 


p + 
scale_y_continuous(label = comma)  +
ylab("�ο�(��)") + xlab("����") +
ggtitle("����ö �м�") + 
theme(axis.text.x=element_text(angle=90))

p + xlab("����ö �̸�")

ggplot(subway.15, aes(x=����, y=station.total)) +
geom_bar(stat = 'identity', fill='lightblue') + 
scale_y_continuous(label = comma) + 
theme(axis.text.x=element_text(angle=45))

comma

comma(92394234234234923)

library(scales)


people <- dollar_format(prefix = "", suffix="��")

people(1000)

ggplot(subway.15, aes(x=����, y=station.total/1000)) +
geom_bar(stat = 'identity', fill='lightblue', color = 'black', width = 0.6) +
theme(axis.text.x=element_text(angle=45)) + 
scale_y_continuous(label = dollar_format(prefix = "", suffix=" ��")) +
xlab("����ö��") +
ylab("�ο�(õ��)") +
ggtitle("2016�� ����ö Top 15") +
theme(plot.title = element_text(hjust = 0.5, vjust=0, size=15,  face = 'bold',
                               colour = "red"))

subway.month.gubun <- subway %>% group_by(����, ����) %>% 
summarise( station.total = sum(sum))

subway.month.gubun

(subway.month.gubun$���� %in% subway.15$����)



subway.month.gubun$���� %in% subway.15$����

subway.month.gubun[subway.month.gubun$���� %in% subway.15$����,]

subway.15.gubun <- 
subway.month.gubun[subway.month.gubun$���� %in% subway.15$����,]

subway.15.gubun

ggplot(subway.15.gubun, aes(x=����, y=station.total/10000, fill=����)) + 
geom_bar(stat = 'identity', position = 'dodge') + 
scale_y_continuous(label = dollar_format(prefix = "", suffix = "��")) +
theme(axis.text.x=element_text(angle=45)) +
ggtitle("���� 15������ ����ö��") +
theme(plot.title=element_text( hjust=0.5, vjust=1, face='bold',
                             colour='red', size=26))

ggplot(subway.15.gubun, aes(x=����, y=station.total, fill=����)) + 
geom_bar(stat = 'identity', position = 'dodge') + 
theme(axis.text.x=element_text(angle=45))
