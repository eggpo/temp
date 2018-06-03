
a <- 1

b <- 1

vX <- c(1,2)

vX

vX.1 <- c(1,2,3,4,5,6,7,8,9,10)

vX.2 <- c(1:10)

vX.2

vX.2 <- c(1:10, 11,12)

vX.2

vX.3 <- c("a", "b")

vX.3

mode(vX.2)

mode(vX.3)

vX.4 <- c(vX.1, vX.2)

vX.4

mode(vX.4)

vX.5 <- c("a", 1)

mode(vX.5)

vX.5

vX.6<- c(1,2,3,4,5,"6", 7,8,9,10)

vX.6

mode(vX.6)

sum(vX.6)

vX.7<- c(1,2,3,4,5,6, 7,8,9,10)

vX.7

1:100

odd <- seq(1,100,2)

odd

text <- 'a'

text.1 <- "a"

text.2 <- "a's"

print (text.2)

odd.1 <- seq(1,10,2)

odd.1

odd.1[3]

odd.1[1]

odd.1[c(1,2)]

odd.1 <- odd.1[-c(1,2)]

odd.1

rm(odd.1)

odd.1

odd

length(odd)

king <- c("태조", "정종", "태종", "세종", "문종", "단종",
         "세조", "예종", "성종", "연산군")

length(king)

grep("예종", king)

grep("종", king)

king[grep("종", king)]

king[c(2,3,4,5,6,8,9)]

king.1 <- king[-c(2,3,4,5,6,8,9)]

king.1

king[c(5:length(king))]

set.seed(1234)
num.text <- sample(10000,100)

length(num.text)

max(num.text)

min(num.text)

mean(num.text)

median(num.text)

summary(num.text)

sd(num.text)

var(num.text)

num.text > 1000

num.text[num.text > 1000]

num.text[101] <- NA

num.text

var(num.text, na.rm = T)

sd(num.text, na.rm = T)

is.na(num.text)

!is.na(num.text)

num.text[!is.na(num.text)]

num.text[102] <- 2341

num.text

num.text <- append(num.text, c(20180527,20180528), after = 10)

num.text

logi <- c(TRUE, FALSE)

logi

names(king)

names(king) <- c("1대", "2대", "3대", "4대", "5대",
                "6대", "7대", "8대", "9대", "10대")
king
king[grep("조", king)]

num.vx1 <- c(10, 20, 30, 40, 50)
num.vx2 <- c(1,2, 3,4,5)

num.vx1 + num.vx2

num.vx1 - num.vx2

num.vx1 / num.vx2

num.vx1 * num.vx2

num.vx1 == num.vx2

num.vx1 > num.vx2

 10 < 11

if( 10 > 11){
    print ("참")
}

if( 10 > 11){
    print ("참")
}else{
    print ("거짓")
}

15 %% 5

for(sadf in king){
    print (sadf)
}

print (paste(10, "x", 20, "=", 10*20))

for(i in 1:4){
    for(j in 1:4){
        print (j)
    }
}

TRUE | FALSE 
# or |
# and &

for(i in 2:9){
    for (j in 1:9){
        if(i != 5 & i != 6){
            print (paste(i, "x", j, "=", i*j))
        }
        
    }
}

mX <- matrix(1:6, ncol=2)

mX

mX.1 <- matrix(1:6, nrow=2)

mX.1

mX.byrow <- matrix(1:6, ncol=2, byrow = TRUE)

mX.byrow

mX.1 <- matrix(1:12,  nrow = 4,ncol = 3,)

mX.1

mX.2 <- matrix(1:11,  nrow = 4,ncol = 3,)

mX.2

mX.3 <- matrix(1:9,  nrow = 4,ncol = 3, byrow = T)

mX.3

mX.4 <- matrix(1:9,  4, 3, byrow = T)

mX.4

a.1 <- c(1,2,3)
a.2 <- c(4,5,6)
a.3 <- c(7,8,9)
a.4 <- c(10, 11, 12)

r.Matrix <- rbind(a.1, a.2, a.3, a.4)

c.Matrix <- cbind(a.1, a.2, a.3, a.4)

r.Matrix

c.Matrix

rownames(r.Matrix)
colnames(r.Matrix)

rownames(c.Matrix)
colnames(c.Matrix)

set.seed(123)
matrix.X <- matrix(sample(100, 25), 5, 5)

matrix.X

matrix.X[1,3]

matrix.X[c(1,3),c(2,4)]

matrix.X[, 2]

matrix.X

matrix.X[2, matrix.X[2,] >50]

matrix.X[2,] >50

matrix.X[2, c(T,F,T,F,T)]

matrix.X

matrix.X < 30

matrix.X[matrix.X < 30]

matrix.X[-c(1,3), -c(1,5)]

t(mX.3)

solve.1 <- matrix(c(1,2,3,3,-1,-3, 2,3,1), 3,3, byrow = T)

solve.1

solve.2 <- matrix(c(3,-1,4))

solve.2

solve(solve.1,solve.2)

list.1 <- list("홍길동", c(1,2,3))

list.1

list.2 <- list("홍길동", c(1,2,3), solve.1, solve.2, matrix.X)

list.2

list.2[3]

names(list.2) <- c("1번", "2번", "3번", "4번", "5번")

list.2

Factor.1 <- c("very_bad", "bad", "normal", "good", "very_good")

mode(Factor.1)

is.factor(Factor.1)

Factor.1

Factor.2 <- factor(c("very_bad", "bad", "normal", "good", "very_good"))

print (Factor.2)

is.factor(Factor.2)

Factor.3 <- factor(c("A", "B", "C", "D", "F"))

print (Factor.3)

Factor.3[6] <- "X"

Factor.3

gender <- factor(c("여", "여", "여", "남", "남", "여", "여"))

print (gender)

as.double(gender)

gender.2 <- factor(c("여", "여", "여", "남", "남", "여", "여"), levels = c("여", "남"))

print (gender.2)

as.double(gender.2)

print (Factor.4)

gender[10] <- "X"

gender[10] <- "남"

gender

levels(gender)

levels(Factor.3)

as.double(gender)

test <- c("A", "B", "C", "D", "F")

test

set.seed(123)
class.1 <- factor(sample(test, 50, replace = T), levels = c("F", "D", "C",
                                                           "B", "A"))

print (class.1)

mean(as.double(class.1) - 1)

is.factor(class.1)

print (class.1)

str(mtcars)

str(iris)

iris

vX1 <- c(T, F,T)

vX2 <- rnorm(3)

vX2

df.1 <- data.frame(logic= vX1, value = vX2)

dim(iris)

head(iris, 1)

tail(iris,1)

df.2 <- data.frame(x = c(1:5), y=seq(1,10,2), z=c("M", "F", "M", "F", "M"), 
                   stringsAsFactors = F)

str(df.2)
