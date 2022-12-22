install.packages("ggplot2")
library(ggplot2)

dataset=read.csv(url("https://raw.githubusercontent.com/biocorecrg/CRG_RIntroduction/master/ex12_normalized_intensities.csv"))
head(dataset)

ggplot(data=dataset)+geom_point(aes(x=sampleB,y=sampleH))

fun<-function(x,y){
  if(x>13 & y>13) return("high")
  else if(x<6 & y<6) return("low")
  else return("normal")
}

expr_limits<-mapply(fun,dataset$sampleB,dataset$sampleH)
dataset<-cbind(dataset,expr_limits)
head(dataset)

p<-ggplot(dataset)+geom_point(aes(x=sampleB,y=sampleH,color=expr_limits))

install.packages("reshape")
library(reshape)
ggplot(melt(dataset), aes(x=variable,y=value))+geom_boxplot()

ggplot(melt(dataset), aes(x=variable,y=value))+geom_boxplot()+facet_wrap(~expr_limits)

ggplot(dataset)+geom_bar(aes(x=expr_limits))
