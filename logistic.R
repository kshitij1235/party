Quality <- read.csv(“qualit.csv”)
table(Quality$poorcare)

install.package(“catools”)
library(“catools”)

split=sample.split(Quality$poorcare , splitratio=0.75)

nrow(Qualitytest)
nrow(QualityTrain)

QualityLog=glm(poorcare~officevisit+narcotis ,data=QualityTrain , family=Binominal)
summary(QualityLog)

predictTrain = predict(QualityLog ,type=”response)
summary(predictTrain)

tapply(predictTrain,qualityTrain$Poorcare,mean)
table(qualityTrain$PoorCare,predictTrain>0.5)
table(qualityTrain$PoorCare,predictTrain>0.7) 
table(qualityTrain$PoorCare,predictTrain>0.2)

install.packages("ROCR")
library(ROCR)

ROCRpred = prediction(predictTrain,qualityTrain$PoorCare)
ROCRpref = performance(ROCRpred , "tpr" , "fpr")

plot(ROCRpref)
plot(ROCRpref , colorize=TRUE)
plot(ROCRpref , colorize=TRUE,print.cutoffs.at=seq(0,1,by=0.1),text.adj=c(-0.2,1.7))
