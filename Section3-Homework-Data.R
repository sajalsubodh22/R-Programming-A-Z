#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
print(expenses[1])
#Solution
p <- rep(NA,length(revenue))
pat <- p
pm<-p
for(i in 1:length(revenue)){
  p[i] = revenue[i]-expenses[i]
  pat[i] = p[i] - 0.3*p[i]
  pm[i] = pat[i]/revenue[i]
}
mean = mean(pat)
good <-0
bad <-0
for(i in 1:12){
  if(pat[i]>=mean){
    good=good+1
  }else{
    bad=bad+1
  }
}
print(paste("good:",good," bad:",bad))
print(paste("max : ", max(pat)," min:",min(pat)))