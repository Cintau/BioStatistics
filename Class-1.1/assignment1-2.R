which(tab$sleep_total>18)
tab$sleep_total[which(tab$sleep_total>18)[1]]
which(tab$sleep_total>18&tab$sleep_rem<3)
sort(tab$sleep_total)
order(tab$sleep_total)
tab$sleep_total[ order(tab$sleep_total) ]
rank(c(1,2,2,3))
rank(tab$sleep_total)
match(c("Cow","Owl monkey","Cheetah"),tab$name)
idx=match(c("Cow","Owl monkey","Cheetah"),tab$name)
tab[idx,]
match(c("Cotton rat"),tab$name)
