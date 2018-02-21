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


data[3,3]
data[3,"Birth.rate",drop=F]
data$Birth.rate[3] #data.birthrate
data[c("Birth.rate","Internet.users")] #data["birthrate", "Internetusers"]

data[c("Birth.rate","Internet.users")][2,]

unique(data$Income.Group) #data.unique()

#add a column
data$calc <- data$Birth.rate * data$Internet.users 
head(data)

data$calc<-NULL  #delete a column
head(data)


#filtering dataframe
filter <- data["Internet.users"] < 2
data[filter,]
data[data["Internet.users"]<2,]

data[data["Birth.rate"]>40,]

data[data["Internet.users"]<2 & data["Birth.rate"]>40, ]

head(data[data$Income.Group == "High income",])

data[data["Country.Name"]=="Malta",]

#------ qplot----------#
?qplot
qplot(x=Birth.rate,y= Internet.users,data=head(data,80),col = Country.Code)
qplot(x=Internet.users, data = data, binwidth = 5) #countplot of Internet users
qplot(x = Country.Code, y=Internet.users, data = head(data))
qplot(x = Income.Group, y = Internet.users, data = data, col = Income.Group)
qplot(x = Income.Group, y = Internet.users, data = data, geom = "boxplot")

#min(data$Internet.users)
#nrow(data[data["Internet.users"]>0 & data["Internet.users"]<5,])
qplot(x = Internet.users, y = Birth.rate, data = data ,color = Income.Group, size=I(3))

      