### Practice 04 2020/06/09 keonwoo Park

# selection sort - 선택정렬
# 제일 작은 값을 앞으로 보냄.

# 

# Selection_sort2 <- function(d){
#   size_d = length(d)
#   for(i in 1:(size_d-1)){
#     for(j in (1+i):size_d){
#       if(d[i]>d[j]){
#         temp_value = d[i]
#         d[i] = d[j]
#         d[j] = temp_value
#         print(d)
#       }
#     }
#   }
#   return(d)
# }
# 
# Selection_sort(a)


######
a = sample(1:10,10)

Selection_Sort<- function(d,decreasing=FALSE){
  size_d <- length(d)
  if(decreasing == FALSE){
    for(i1 in 1:(size_d-1)){
      min = d[i1]
      min_index=i1
      for(i2 in (i1+1):size_d){
        if(d[i2]<min){
          min=d[i2]
          min_index=i2
        }
      }
      ### Swap
      tem_value = d[i1]
      d[i1] = d[min_index]
      d[min_index] = tem_value
      print(d)
    }
    
  }else{
    
  }
  return(d)
}
Selection_Sort(a)
Selection_sort2(a)

