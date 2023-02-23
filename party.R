install.package(“party”)
library(“party”)
print(head(readingSkills))
input.dat<-readingSkills[(1:105),]
png(file=”output.png”)
output.tree <- ctree(nativespeaker~age+shoeSize+score,data=input.dat)
plot(output.tree)
