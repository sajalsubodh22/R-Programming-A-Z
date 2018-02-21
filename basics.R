#variables
A <- 10
B <-20
C <- A+B

#concatenation
a <-"ho"
b <-"hi"
c <- paste(a,b)

## AND ,OR ,NOT
4 & 0
5 | 1
!(TRUE)

##for statement
for(i in 1:5){
  print("Hi")
  print("Hey")
}

## if statement 
x <- rnorm(1)
if (x>=0){
  ans <- "Positive"
}else {
  ans<- "Negative"
}
print(ans)

##law of large nos.
j<-100
while(j<=100000){
  x<-rnorm(j)
  count<-0
  sum<-0
  for(i in x){
    #print(i)
    sum<-sum+i
    if(i>-1 && i<1){
      count<-count+1
    }
  }
  print(paste(count/j," ",sum/j))
  j<-j*10
}

#functions

fact <- function(n){
  if(n==1)return(1)
  return(n*fact(n-1))
}

fact(4)
