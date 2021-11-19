df=iris
str(df)
attach(df)
View(iris)#viewing dataset(iris)
head(iris)
tail(iris)
dim(iris)
length(iris$Species)
class(iris$Species)
mode(iris)

#checking for nullvalues
anyNA(iris)
colSums(is.na(iris))
is.na(iris)
table(malaria$Label)
str(iris)

newIris = iris
newIris = newIris[-5]
View(newIris)
m = kmeans(newIris,3)# 3 is the clusters you want to see
m
#plots

plot(iris[c("Sepal.Length","Sepal.Width")],col=m$cluster) ##kmeans model.
plot(iris[c("Sepal.Length","Sepal.Width")],col=iris$Species)  ##original data
boxplot(iris$Species,col = 'blue')

c=table(iris$Species,m$cluster)#create tables
c
accuracy = sum(diag(c))/sum(c) #finding accuracy  
accuracy

