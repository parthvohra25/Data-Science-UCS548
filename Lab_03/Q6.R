A <- c(23,34,56,3,0,0)
C <- c(2,3,4,5,6,7)
for(i in 1:length(A)){
  A[i] = A[i]+C[i]
}
print(A)