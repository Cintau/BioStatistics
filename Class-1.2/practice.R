library(gapminder)
data(gapminder)
head(gapminder)
colnames(gapminder)

s=split(gapminder$lifeExp,gapminder$year)
s
mean(gapminder$lifeExp[gapminder$year<1957]<=40)

#or
dat1952=gapminder[gapminder$year==1952,]
x=dat1952$lifeExp
mean(x<=40)

mean(x>=40&x<=60)
#or 
mean(x<=60)-mean(x<=40)

prop=function(q){
  mean(x<=q)
}
prop(40)
qs=seq(from=min(x),to=max(x),length=20)
props=sapply(qs,prop)
plot(qs,props)
props=sapply(qs,function(q)mean(x<=q))
plot(ecdf(x))
