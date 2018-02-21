Salary[1,2]  #1st row 2nd column
Salary[1,]  #1st row
Salary[,3]  #3rd column

Salary[1:3,2]
Salary[2:5,3:10]
Salary[c(1,3,5),c(2,4)]

#drop in subnetting
Salary[1,] #is.vector(Salary[1,]) == T
Salary[1,,drop=F] #is.matrix(Salary[1,,drop=F]) == F

?matrix()

#creating by matrix() method        
m = matrix(data = c(1,2,3,4,5,6,7,8),nrow = 2,ncol=4, byrow=TRUE)
m
colnames(m)=c('A','B','C','D')
rownames(m)=c('X','Y')
m['X','B']
rownames(m)
rownames(m)<-NULL
m

#creating by rbind() and cbind()
r1 <- c("A", "B", "C")
r2 <- c("A", "B", "C")
m2<-rbind(r1,r2)
m2
m3 <-cbind(r1,r2)
m3


##------------------------------------------------------------------------##
?mean()
?round()
round(FieldGoals/Games,1)
mean(FieldGoals) #complete matrix mean
colMeans(FieldGoals)
colSums(FieldGoals)
rowMeans(FieldGoals)

##------------------------------------------------------------------------##
?matplot()
matplot(x = Salary[1,], y = Salary[2,],xlab = "Player1",ylab = "Player2")
matplot(x = Salary[,1], y = Salary[,2],xlab = "2004",ylab = "2005")

matplot(x = colnames(Salary), y = colMeans(Salary),xlab = "Year", ylab = "Mean Salary")
#ggplot(data=Salary,aes(x = colnames(Salary), y = colMeans(Salary)))+geom_point()
t(FieldGoals)
matplot(t(FieldGoals), type='b',pch = 15:18, col = c(1:6))
legend("bottomright", inset = 0.01, legend =Players, pch = 15:18,col=c(1:6))
?legend()

d<-MinutesPlayed[1:3,]
matplot(t(d), col = c(1:4,6), type = 'b', pch = 15:18)
legend("bottomleft", legend = Players[1:3], col = c(1:4,6), inset = 0.01,pch = 15:18)
       