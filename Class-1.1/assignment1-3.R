vec=c("red","blue","red","green","green","yellow","orange")
fac=factor(vec)
fac
levels(fac)
vec="blue"
fac2=factor(vec,levels=c("blue","green","yellow","orange","red"))
fac2
levels(fac2)
vec=tab$order
fac=factor(vec)
fac
table(fac)
s=split(tab$sleep_total,tab$order)
s
s[[17]]
s[["Rodentia"]]
mean(s[["Rodentia"]])
lapply(s,mean)
sapply(s,mean)
tapply(tab$sleep_total,tab$order,mean)
s
tapply(tab$sleep_total,tab$order,sd)
