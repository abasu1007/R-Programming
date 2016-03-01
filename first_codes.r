getwd
getwd()
source("mycode.R")
ls()
source("mycode.R")
ls()
second(4)
second(1:10)
myfunction()
myfunction()
myfunction()
x <- 1:20
x
x(16)
x[16]
print x
print (x)
m <- matrix(nrow = 2, ncol = 3)
m
dim(m)
attributes(m)
m <- matrix(nrow = 2, ncol = 3)
m
m <- matrix(1:6, nrow = 2, ncol = 3)
m
m <- matrix(1:6, nrow = 2, ncol = 2)
m
m <- 1:10
dim(m)
m
dim(m) <- c(2,5)
c
m
install.packages("swirl")
install.packages("swirl")
install.packages("swirl")
library(swirl)
ls()
rm(list=ls())
ls()
install_from_swirl("R Programming")
swirl()
5+7
x <- 5+7
bye()
swirl()
x
y <- x - 3
y
z <- c(1.1, 9, 3.14)
bye()
x <- 4
x.class()
class(x)
x <- c(4, "a", TRUE)
class(x)
x <- c(1, 3, 5)
y <- c(3, 2, 10)
cbind(x, y)
dim(x)
x <- c(4, "a", TRUE)
cbind(x, y)
dim(cbind(x, y))
class(cbind(x, y))
x <- list(2, "a", "b", TRUE)
x[[2]]
x[2]
foo <- list( str='R', vec=c(1,2,3), bool=TRUE )
foo
foo[1]
foo[2]
foo[[2]]
foo[vec]
foo[[vec]]
foo[[2, 3]]
foo$vec[2]
foo$vec
foo[2[3]]
foo[2:3]
dim(foo)
x
dim(x)
dim(x[[2]])
class(x)
class(x[[2]])
x <- 1:4
x
y <- 2:3
x+y
class(x+y)
class(x)
x <- c(17, 14, 4, 5, 13, 12, 10)
x[x>10]
x[x>10] = 4
x
x <- c(17, 14, 4, 5, 13, 12, 10)
x[x>10] <- 4
x
x <- c(17, 14, 4, 5, 13, 12, 10)
x[x>10] == 4
x
x[x==4]
x[x==4]>10
pwd
getwd
getwd()
cd..
cd..
cd ..
setwd("C:\Users\Anirban\Desktop\Research\R-Programming-Coursera")
setwd("C:/Users/Anirban/Desktop/Research/R-Programming-Coursera")
getwd()
df <- read.csv(file="hw1_data.csv",nrows=2)
df
df <- read.csv(file="hw1_data.csv")
nrows(df)
df
nrow(df)
df <- read.csv(file="hw1_data.csv",nrows=152:153)
df
df[152:153, ]
df[151:152, ]
df <- read.csv(file="hw1_data.csv")
df[152:153, ]
df[47, ]
isNA(df)
isNa(df)
sum(is.na(df))
is.na(df)
is.na(df)==TRUE
sum(is.na(df))
colSums(is.na(df))
df[ ,1]
df[ ,1],rm.na
colMeans(df[ ,1], na.rm = TRUE)
colMeans(df[ ,1])
mean(df[ ,1], na.rm = TRUE)
mean(df[ ,1])
dim(df)
df('Ozone' > 31)
df ['Ozone' > 31]
df [['Ozone' > 31]]
df
df [ ,1] > 31
df[(df[ ,1] > 31) & (df[ ,4] > 90)]
df[df[ ,1] > 31 & df[ ,4] > 90]
df[df[ ,1] > 31]
df [ ,1] > 31
x <- df[df[ ,1]>31]
x <- df[ ,1]>31
x
newdata <- mydata[ which(mydata$gender=='F' 
newdata <- df[which(df$Ozone > 31 & df$Temp > 90)]
newdata <- df[which(df$Ozone > 31 & df$Temp > 90), ]
newdata
rowMeans(newdata$Solar.R)
rowMeans([newdata$Solar.R, ])
rowMeans(newdata)
colMeans(newdata)
colMeans(newdata$Solar.R)
newdata <- df[which(df$Month==6), ]
colMeans(newdata)
newdata <- df[which(df$Month==5), ]
newdata
max(newdata$Ozone, na.rm = TRUE)
swirl()
?c
z
c('z', 555, 'z')
c(z, 555, z)
z*2 + 100
sqrt(z - 1) <- my_sqrt
my_sqrt <- sqrt(z - 1)
my_sqrt
my_div <- z/my_sqrt
my_div
c(1, 2, 3, 4) + c(0, 10)
c(1, 2, 3, 4) + c(0, 10, 100)
z*2 + 1000
my_div
swirl()
getwd()
ls()
x <- 9
ls()
list.files()
?list.files
args(list.files())
args()
list.files()
args(list.files)
old.dir <- getwd()
dir.crate(testdir)
dir.create(testdir)
dir.create()
testdir <- dir.create()
old.dir
dir.create("testdir")
setwd($old.dir/testdir)
old.dir
setwd(old.dir/"testdir")
setwd("testdir")
file.create("mytest.R")
ls()
list.files()
file.exists("mytest.R")
file.info("mytest.R")
file.rename("mytest.R", "mytest2.R")
file.copy("mytest2.R","mytest3.R")
file.path("mytest3.R")
file.path("mytest3.R")
file.path("folder1", "folder2")
?dir.create
dir.create(file.path("testdir2", "testdir3"))
dir.create(file.path("testdir2", "testdir3"), recursive = TRUE)
unlink("testdir2", recursive = TRUE)
old.dir
setwd(old.dir)
unlink("testdir", recursive = TRUE)
bye()
newdata <- df[which(df$Month==6), ]
colMeans(df)
colMeans(newdata)
newdata <- df[which(df$Ozone > 31 & df$Temp > 90)]
newdata <- df[which(df$Ozone > 31 & df$Temp > 90), ]
colMeans(newdata)
colMeans(df, rm.na = TRUE)
df
df[47, ]
mean(df[ ,1], na.rm = TRUE)
colSums(is.na(df))
swirl()
1:20
pi:10
15:1
?`:`
seq(1, 20)
seq(0, 10, by=0.5)
seq(5, 10, length=30)
my_seq <- seq(5, 10, length=30)
length(my_seq)
1:length(my_seq)
seq(along.with = my_seq)
seq_along(my_seq)
rep(0, times = 40)
rep(c(0, 1, 2), times = 10)
rep(c(0, 1, 2), each = 10)
num_vect <- c(0.5, 55, -10, 6)
tf <- num_vect < 1
tf
num_vect >= 6
my_char <- c("My", "name", "is")
my_char
paste(my_char, collapse = " ")
ny_name <- c(my_char, "Anirban")
my_name <- c(my_char, "Anirban")
my_name
paste(my_name, collapse = " ")
paste("Hello", "world!", sep = " ")
paste(1:3, c("X", "Y", "Z"), sep = "")
paste(LETTERS, 1:4, sep = "-")
x <- c(44, NA, 5, NA)
x*3
y <- rnorm(1000)
z <- rep(NA, 1000)
my_data <- sample(c(y, z), 100)
is.na(my_data)
my_na <- is.na(my_data)
my_na
my_data == NA
sum(my_data)
sum(my_na)
my_data
0/0
Inf - Inf
x
x[1:10]
x[is.na(x)]
y <- x[!is.na(x)]
y
y[y > 0]
x[x > 0]
x[!is.na(x) & x > 0]
x[c(3, 5, 7)]
x[0]
x[3000]
x[c(-2, -10)]
x[-c(2, 10)]
vect <- c(foo = 11, bar = 2, norf = NA)
vect
names(vect)
vect2 <- c(11, 2, NA)
names(vect2) <- c("foo", "bar", "norf")
identical (vect, vect2)
vect["bar"]
vect[c("foo", "bar")]
my_vector <- 1:20
my_vector
dim(my_vector)
length(my_vector)
dim(my_vector) <- c(4, 5)
dim(my_vector)
attributes(my_vect)
attributes(my_vector)
my_vector
class(my_vector)
my_matrix <- my_vector
?matric
?matrix
my_matrix2 <- matrix(data = 1:20, nrow = 4, ncol = 5) 
identical(my_matrix, my_matrix2)
patients <- c("Bill", "Gina", "Kelly", "Sean")
cbind(patients, my_matrix)
my_data <- data.frame(patients, my_matrix)
my_data
class(data_frame)
class(my_data)
cnames <- c("patient", "age", "weight", "bp", "rating", "test")
colnames(my_data) <- cnames
my_data
q()
