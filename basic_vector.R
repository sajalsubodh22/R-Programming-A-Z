vec <- c(5L,2L,3L,4L)
typeof(vec[1])
names(vec) <- c('a','b','c','d')  #named vector
vec
rm(vec)

vec[1]
is.integer(vec)
is.array(vec)
is.finite(vec)

vec2 <- c(1,2,3L,4L)
is.integer(vec2)
typeof(vec2[3])

#seq() and rep()
x<-seq(3,10,2)
x<-rep(x,3)
x
length(x)
x[-1]
x[-3]

#mod operator
a<-c(1,4,6,5,7)
b<-c(2,3,1)
c<-a%%b
c

#empty vector
d <-rep(NA,10)  ## NA is NaN in R
for( i in 1:3){
  d[i]=i
}
i=1
while(!is.na(d[i]))
{
  print(d[i])
  i=i+1
}