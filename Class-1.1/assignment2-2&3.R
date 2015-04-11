population=read.csv("femaleControlsPopulation.txt")
population=population[,1]
head(population)
#head()shows you the first 6 numbers of the column
mean(population)
sample(population,12)
#In R, we can make a random sample using the sample() function
sampleMean=replicate(200,mean(sample(population,12)))
head(sampleMean)
plot(sampleMean)
#The replicate() function takes two arguments, which are the number of times to replicate, and then an expression: the command you want to replicate.
null=replicate(10000,mean(sample(population,12)-mean(sample(population,12))))
head(null)
plot(null)
null = replicate(10000, mean(sample(population, 12)) - mean(sample(population, 12)))
hist(null)
diff=mean(dat[13:24,2]-mean(dat[1:12,2]))
null = replicate(10000, mean(sample(population, 12)) - mean(sample(population, 12)))
abline(v=diff,col="red")
abline(v=-diff,col="red")
mean(null>abs(diff))
mean(abs(null)>abs(diff))
