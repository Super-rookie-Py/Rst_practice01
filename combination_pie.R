## Practice 03 2020/06/09 keonwoo Park
# combination, 그래프


# 파스칼의 삼각형 *위의 값을 더함)
Combination_1 <- function(n,r){
  print(paste0(n,",",r))
  if(n==r | r==0){
    return(1)
  }
  else{
    return(Combination_1(n-1,r-1)+Combination_1(n-1,r)) 
  }
}
Combination_1(3,1)

# 조합 식으로 구현 
Combination_2 <- function(n,r){
  print(paste0(n,",",r))
  if(n>1 & r>1){
    return(n/r*Combination_2(n-1,r-1))
  }else if(r==1){
    return(n)
  }else if(r==0){
    return(1)
  }
  
}
Combination_2(4,2)

Combination_1(100,2)
Combination_2(100,2)

T1<-Sys.time()
Combination_1(100,2)
T2<-Sys.time()
print(T2-T1)

T1<-Sys.time()
Combination_2(100,2)
T2<-Sys.time()
T3 = difftime(T2,T1,units="mins")
T3

###  분산구하기

a = sample(1:100,100,replace=T)

# 기본식

Var_1 <-function(a){
  sum_a = 0
  sum_sq = 0
  for(i in a){
    sum_a = sum_a + i  
  }
  mean=sum_a/length(a)
  for(i in a){
    sum_sq=sum_sq+(i-mean)^2
  }
  return(sum_sq/(length(a)-1))
}
Var_1(a)

# 간편식

Var_2 <- function(a){
  sum_a = 0
  sum_sq = 0
  for(i in a){
    sum_a = sum_a + i
    sum_sq = sum_sq + i^2
  }
  mean_1 = sum_sq/(length(a)-1)
  mean_2 = (sum_a^2)/(length(a)*(length(a)-1))
  return(mean_1-mean_2)
}

# 파이 근사치 구하기
Pie <- function(n){
  x = runif(n,-1,1)
  y = runif(n,-1,1)
  r = (x^2+y^2)^0.5
  n1 = length(r[r<=1])
  return(4*n1/n)
}
Pie(1000000)



### 그래프 구조 

data_distance<-matrix(nrow=5, ncol=5)
data_distance[,] = Inf
data_distance[1,2]=1
data_distance[1,3]=3
data_distance[1,5]=2
data_distance[2,1]=1
data_distance[2,3]=1
data_distance[3,2]=1
data_distance[3,1]=3
data_distance[3,4]=2
data_distance[4,3]=2
data_distance[4,5]=2
data_distance[5,1]=2
data_distance[5,4]=2
data_distance[3,2]=1
data_distance[3,1]=3
data_distance[3,4]=2
data_distance[4,3]=2
data_distance[4,5]=2
data_distance[5,1]=2
data_distance[5,4]=2

data_distance
# 그래프 구조는 빈 공간을 차지하는 경우가 있다.(메모리 소모가 비 효율적)

# 데이터 프레임에 반복적으로 값을 넣을 때 쓰는 방법.

temp_data <- data.frame(start= 0, arrive = 0, distance = 0)
data_distance_1 <-NULL

# index 테이블
index_distance <- data.frame(start=1:5, Index=rep(0,time=5))
index_distance
prei = 0
i1 = 0
for(i in 1:5){
  for(j in 1:5){
    if(is.finite(data_distance[i,j])){
      temp_data$start = i
      temp_data$arrive = j
      temp_data$distance = data_distance[i,j]
      data_distance_1 = rbind(data_distance_1,temp_data)
      i1 = i1 +1
      # index table
      if(prei!=i){
        index_distance$Index[i]=i1
        prei=i
      }
    }
    
  }
}
data_distance_1
temp_data$start 
temp_data
index_distance
