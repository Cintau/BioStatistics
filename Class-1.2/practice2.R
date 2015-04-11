library(gapminder)
data(gapminder)
colnames(gapminder)
dat1952=gapminder[gapminder$year==1952,]
dat1952$pop
plot(dat1952$country,dat1952$pop)
x=log10(dat1952$pop)
plot(dat1952$country,x)
sd(x)

#better
pop=dat1952$pop
logpop=log10(pop)
sd(logpop)
sqrt(mean((logpop - mean(logpop))^2))

#to get the max z score of the things
#to ensure that this operation happens first, as in: (a - b)/c.
qnorm(z)
abline(0,1)
z=(logpop-mean(logpop))/sd(logpop)
max(z)

#cumulative density function for a Normal
q=pnorm(logpop)
F=function(q)pnorm(q,mean=mean(logpop),sd=sd(logpop))
F(8)
n=length(logpop)
p=n*(F(7)-F(6))
p
sum(logpop>6&logpop<=7)

#convenience of Z-scores, create a 
mean(z)
sd(z)
pnorm(z)
head(pnorm(z))

#plot
qqnorm(logpop)
n=length(x)
ps=((1:n)-0.5)/n
ps
qnorm(ps[1])
# quantile of the standard normal distribution which matches to the smallest number in x 
plot(qnorm(ps),sort(x))
sort(x)
(4.778231-0.5)/4.778231
0.5/142

