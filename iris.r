Iris
newiris$Species<-NULL
Newiris

kc<-kmeans(newiris,3)
(kc<-(kmeans(newiris,3)))


table(iris$species ,kc$cluster)

plot(newiris[c(“Spetal lenght”,” spetal width”)],col=kc$cluster)

points(kc$centers[c(“Spetal lenght”,” spetal width”)],col=1.3 , pch=8 , cex=2)
