#Q1)
df <- data.frame(
  PatientID = c("1","2","3","4" ),
  
  AdmDate = c("10/15/2009","11/01/2009","10/21/2009","10/28/2009"),
  
  Age = c(25,34,28,52), 
  
  Diabetes=c("Type1","Type2","Type1","Type1"),
  
  Status = c("Poor","Improved","Excellent","Poor")
)

print(df)

#Q2)
#a)
s1 = data()
s1 =data.frame( PatientID = c("1","2","3","4" ),Age = c(25,34,28,52))
print(s1)
s1 <- df[,c("PatientID","Age")]
#b)
which(df$Diabetes == "Type1") 

df1<-table(df$Status)
print(df1)

df2 <- subset(df,Diabetes == "Type1",PatientID)
df2 <- filter(df,Diabetes == "Type1")
#c)
dff <- group_by(df,Status)
dff2 <- summarise_all(dff,n_distinct)
dff3 <- filter(dff2,Status == "Poor")

dff <- filter(df,Status=="Poor")
dff2 <- nrow(dff)
#d)
summary(df)
#e)
mean(df$Age)

#f)
df[nrow(df) + 1,] <- c("5", "20/9/2009", 30 ,"Type2","Excellent")
print(df)

#Q3)
header<-"My First List"
a<-c(12,14,16,20)
mat2d<-matrix(1:10, nrow=5)
s<-c('First', 'Second', 'Third')
myList<-list(title=header, ages=a, mat2d, s)
myList  #print List
myList[[2]] #print 2nd component
