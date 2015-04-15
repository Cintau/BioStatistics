dat<-read.csv("babies.txt")
babies=read.table("babies.txt",header=TRUE)
bwt.nonsmoke=babies$bwt[babies$smoke==0]
bwt.smoke=babies$bwt[babies$smoke==1]
mean(bwt.nonsmoke)-mean(bwt.smoke)
sd(bwt.nonsmoke)
sd(bwt.smoke)

colnames(dat)

dat.ns=bwt.nonsmoke[1:30]
dat.s=bwt.smoke[1:30]
N=30
X.ns = mean(dat.ns)
sd.ns = sd(dat.ns)
X.s = mean(dat.s)
sd.s = sd(dat.s)
sd.diff = sqrt(sd.ns^2/N+sd.s^2/N)
tval = (X.ns - X.s)/sd.diff
t.test(dat.ns, dat.s)$statistic

#or easier way:
dat.ns = head(bwt.nonsmoke, 30)
dat.s = head(bwt.smoke, 30)
t.test(dat.ns, dat.s)$statistic

pval = 1- pnorm(abs(tval)) + pnorm(-abs(tval))
