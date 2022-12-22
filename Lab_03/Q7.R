D<-c(6,7)
A <- c(25,37,60,8,6,7)
for(i in 1:length(D)){
  A[i] = A[i]+D[i]
}
print(A)