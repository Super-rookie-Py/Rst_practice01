## Practice 01 2020/06/07 keonwoo Park

setwd("C:/Users/거누/Desktop/Rstat/데이터 구조론/practice")

# 데이터 반복 rep()

data_1 <- data.frame(y=1:10,x1=rep(1:2,each=5),x2=rep(1:5,time=2))
data_1
data_2 <- as.matrix(data_1)
data_2
mean(data_1[,3])
data_3<-matrix(nrow=3,ncol=4)
data_3
data_3[1,1]=5
a=1:50
# 비 복원 추출
sample(a,50,replace=F)
# 복원추출 replace = T
sample(1:6,10,replace=T)


rep(1:10,each=3,time=2)
sort(sample(1:100,100))

data_4<-data.frame(first_name=c("David","Keonwoo","A"),
                   last_name = c("Kim","Park","Lee"))
data_5 <- data.frame(cell_Phone=c(01033335555,01022224444,01077772233))
data_6 <-cbind(data_4,data_5)
data_7 <- data.frame(first_name="Da",last_name="Pa",cell_Phone=01099469999)
data_7
data_8 <- rbind(data_6,data_7)
data_8
