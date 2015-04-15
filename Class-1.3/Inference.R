dat <- read.csv("femaleMiceWeights.txt")
dat[1:12,2]
dat[13:24,2]
mean(dat[13:24,2])-mean(dat[1:12,2])
population<-read.csv("femaleControlsPopulation.txt")

control<-sample(population[,1],12)
mean(control)

n<-10000
null <- vector("numeric",n)
for(i in 1:n){
  control<-sample(population[,1],12)
  treatment<-sample(population[,1],12)
  null[i]<-mean(treatment)-mean(control)
}

diff<-mean(dat[13:24,2])-mean(dat[1:12,2])
mean(null>diff)
hist(null)

qqnorm(null)
qqline(null)
