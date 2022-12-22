library(dplyr)
#q1
data<-read.csv("https://raw.githubusercontent.com/fivethirtyeight/data/6d3ee757f29680d417e836bef72dafcdec49c97a/daily-show-guests/daily_show_guests.csv",nrows = 10)
data

#q2
colnames(data)

colnames(data) <- c("year","job","date","category","guest_name")

#q3
data1 <- select(data,year,date,guest_name)
summarise(data1)

#q4
data %>% select(job,date,category,guest_name)
data %>% select(-year)

#q5
job1 <- data[substr(data$job,1,5)=="actor",]
name1 <- data[substr(data$name,1,3)=="ABC",]
common <- inner_join(job1,name1)

#q6
arrange(data,date)

#q7
p_year = 2022
mutate(data,Experience = p_year-year)
