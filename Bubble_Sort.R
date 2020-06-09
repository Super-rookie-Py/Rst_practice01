### Practice 04 2020/06/09 keonwoo Park

# Bubble sort
# 옆에있는 값이랑 비교해서 작은값을 앞으로

Bubble_sort<- function(d){
  size_d = length(d)
  for(i in 1:(size_d-1)){
    for(j in 1:(size_d-i)){
      if(d[j]>d[j+1]){
        temp_value = d[j]
        d[j] = d[j+1]
        d[j+1] = temp_value
      }
    }
  }
  return(d)
}

