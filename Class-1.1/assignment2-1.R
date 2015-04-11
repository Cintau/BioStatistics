dat=read.csv("femaleMiceWeights.txt")
mean(dat[13:24,2]-mean(dat[1:12,2]))
s=split(dat[,2],dat[,1])
stripchart(s,vertical=TRUE,col=1:2)
sapply(s,mean)
abline(h=sapply(s,mean),col=1:2)
sum(dat[13:24,2]<mean(dat[1:12,2]))
sum(dat[1:12,2]>mean(dat[13:24,2]))
highfat=s[["hf"]]
highfat
sample(highfat,6,replace=TRUE)
#whether to replace the observations back in the population after they are chosen once
highfat>30
as.numeric(highfat>30)
sum(highfat>30)
mean(highfat>30)
