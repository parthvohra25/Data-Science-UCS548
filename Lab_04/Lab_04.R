#Q1)
y= seq(1.3,5,by=0.3)
print(y)

z=rep(seq(1,4,by=1),5)
print (z)

m=seq(14,0,by=-2)
print(m)

v=c(5,12,13,20)
x=rep(v,each=2)
print(x)

#Q2)
library(datasets)
data <- data(iris)
summary(iris)

print(str(iris))
#to check whether it is a factor or not
class(iris$Species)

#A
#print(typeof(iris))
#B
#ncol(iris)
#nrow(iris)
#C
#class(iris)
#levels(iris)

#Q3)

#Q3)A
setosa <- iris[iris$Species == "setosa",]
sl_s <- setosa$Sepal.Length
sw_s <- setosa$Sepal.Width
print(paste("Mean of Setosa's Sepal Length",mean(sl_s)))
print(paste("Standard Deviation of Setosa's Sepal Length is:",sd(sl_s)))

print(paste("Mean of Setosa's Sepal Width",mean(sw_s)))
print(paste("Standard Deviation of Setosa's Sepal Width is:",sd(sw_s)))

versicolor <- iris[iris$Species == "versicolor",]
sl_v <- versicolor$Sepal.Length
sw_v <- versicolor$Sepal.Width
print(paste("Mean of Versicolor's Sepal Length",mean(sl_v)))
print(paste("Standard Deviation of Versicolor's Sepal Length is:",sd(sl_v)))

print(paste("Mean of Versicolor's Sepal Width",mean(sw_v)))
print(paste("Standard Deviation of Versicolor's Sepal Width is:",sd(sw_v)))

virginica <- iris[iris$Species == "virginica",]
sl_vi <- virginica$Sepal.Length
sw_vi <- virginica$Sepal.Width
print(paste("Mean of Virginica's Sepal Length",mean(sl_vi)))
print(paste("Standard Deviation of Virginica's Sepal Length is:",sd(sl_vi)))

print(paste("Mean of Virginica's Sepal Width",mean(sw_vi)))
print(paste("Standard Deviation of Virginica's Sepal Width is:",sd(sw_vi)))

#Q3)B
library(datasets)
data(iris)
vec<-c()
j<-0
for(i in iris$Sepal.Length){
  if(i<5){
    vec[j] = "short"
  }else{
    vec[j] = "long"
  }
  j<-j+1
}
iris.class <- data.frame(
  Calyx.Width = vec
)
print(iris.class$Calyx.Width)

#Q4)

#Q4)A)
print(mtcars)
str(mtcars)
names(mtcars)
summary(mtcars)

for(i in mtcars$cyl)
{
  if(i>5){
    new_mtcars <- mtcars[i]
  }else{
    next
  }
}
print(new_mtcars)

#Q4)B)
head(mtcars, 10)

#Q4)C)
mtcars[substr(row.names(mtcars),1,5)=="Honda", ]
#OR
#df <- mtcars[mtcars$cyl >= 5,]
#print(rownames(df))






