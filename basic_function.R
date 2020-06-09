## Practice 02 2020/06/07 keonwoo Park

# 함수 설정 function

Add <- function(x,y=0){
  z=x+y
  return(z)
}
Add(3,10)

f_if <-function(a1,a2){
  if (a1==a2){
    print('a1==a2')
  }else if(a1>a2){
    print("a1>a2")
  }else{
    print("a1<a2")
  }
}

a=1:10
b=a %in% c(1,3,5)
b
# which 원하는 값의 위치를 뽑아옴
a= sample(1:10,10)
a
which(a==9) # 9가 몇번째 있는지 알려줌

which(a%%2==0) # 짝수값의 위치 확인가능.
a[which(a%%2 == 1)]

a[which(a>3)] # 3보다 큰값의 위치를 받아서 그 위치의 값 확인  

