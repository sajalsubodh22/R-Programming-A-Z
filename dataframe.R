read.csv(file.choose())
getwd()

data <- read.csv("data-science/R-programming/DemographicData.csv")
nrow(data) #no. of rows
ncol(data) #no. of columns
head(data,10)
tail(data)
str(data) #structure of data
summary(data) #data.describe() in python

colnames(data)
rownames(data)
