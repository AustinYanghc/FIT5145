#TaskB.1
> setwd("~Austin/Desktop")   
> train <- read.table("train.csv",header=TRUE,sep=",")
> test <- read.table("test.csv",header=TRUE,sep=",")
> hist(train$X1,freq=FALSE,breaks=12,col="red",xlab="X1",main="Histogram,rug plot,density curve")
> rug(jitter(train$X1))
> lines(density(train$X1),col="blue",lwd=2)

> hist(train$X2,freq=FALSE,breaks=12,col="red",xlab="X1",main="Histogram,rug plot,density curve")
> rug(jitter(train$X2))
> lines(density(train$X2),col="blue",lwd=2)
> 
  > hist(train$X3,freq=FALSE,breaks=12,col="red",xlab="X1",main="Histogram,rug plot,density curve")
> rug(jitter(train$X3))
> lines(density(train$X3),col="blue",lwd=2)

> hist(train$X4,freq=FALSE,breaks=12,col="red",xlab="X1",main="Histogram,rug plot,density curve")
> rug(jitter(train$X4))
> lines(density(train$X4),col="blue",lwd=2)

#TaskB.2
> ggplot(train, mapping = aes(x = X1+X2+X3+X4, y = Y)) + geom_point() + geom_smooth(method = lm)
> ggplot(train, mapping = aes(x = X2+X3+X4, y = Y)) + geom_point() + geom_smooth(method = lm)
> model1<- lm(Y~(X1+X2+X3+X4)+1, data=train)
> model2<- lm(Y~(X2+X3+X4)+1, data=train)
> summary(model1)
> summary(model2)

#TaskB.3
> new<- data.frame(test)
> resultModel1 <-  predict(model1,new)
> resultModel2 <-  predict(model2,new)
> resultTrue<- test[c(1)]

> testModel1<- lm(model1, data=test)
> testModel2<- lm(model2, data=test)
> summary(testModel1)
> summary(testModel2)
