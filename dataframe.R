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


#------------creating dataframe----------------#
data2 <- cbind(Codes_2012_Dataset,Countries_2012_Dataset,Regions_2012_Dataset)
head(data2)

df <- data.frame(Countries_2012_Dataset,Codes_2012_Dataset,Regions_2012_Dataset) 
head(df)
colnames(df)<-c("Country","Code","Region")
?merge
df2 <- merge(data,df,by.x = c("Country.Name","Country.Code"),by.y = c("Country","Code"))  #merging dataframe
head(df2)


qplot(x = Internet.users, y = Birth.rate, data = df2, colour = Region, shape = I(18), alpha = 0.6
                ,size = I(4), main = "Region wise BirthRate vs InternetUsers") #shape is 0-25

# creating dataframe from matrix
temp1 <- matrix(seq(1,9),nrow=3,ncol=3)
temp1
temp_df <- data.frame(temp1)
temp_df
?ggplot()
?aes()
?geom_smooth
?facet_grid()
