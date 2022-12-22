#Q1 Dataset
rand <- round(runif(60,0,100),0) 
rownames <- c("Ajay","Ram","Siya","Aarushi","Kevin","Sam","Dhruv","Sakshi","Rahul","Sapna","Anjali","Tina","Sumbul","Priyanka","Ankit","Shiv","Ashi","Priya","Ryan","Aaryan") 
colnames <- c("SUB1","SUB2","SUB3")
m <- matrix(rand, nrow = 20,ncol = 3,dimnames = list(rownames,colnames))

#Q1)A)
total = apply(m,1,sum)

#Q1)B)
m1 <- cbind(m,total)

#Q1)C)
st.err <- function(x){
  sd(x)/sqrt(length(x))
}

sterr = apply(m1[,1:3],2,st.err)

#Q1)D)
func <- function(x){
  x = x+0.25
}

m2 = apply(m1[,1:3],2,func)
total = apply(m2,1,sum)
m2 <- cbind(m2,total)

#Q2)
m1 <- data.frame(m1)
v1 <- m1[['SUB1']]
v2 <- m1[['SUB2']]
v3 <- m1[['SUB3']]

mylist<-list(V1,V2,V3)
lapply(mylist,sum)

#Q3
total_sum = sapply(mylist, sum)
total_sum

#Q4
sapply(mylist,function(x)x^2)

#Q5
I =c(1,1,1,1,1,2,2,2,2,2,3,3,3,3,3,4,4,4,4,4)
me<-cbind(marks,I)
me
tapply(marks[,1],INDEX=I,mean)

#Q6
mapply(function(x,y) x/y,marks[,1],marks[,2])
