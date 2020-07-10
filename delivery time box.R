#predicting the delivery time using the 
#sorting time
getwd()
View(delivery_time)
#lets see the visualisation
boxplot(delivery_time$Delivery.Time,col = "red")
boxplot(delivery_time$Sorting.Time,col = "blue")
#lets apply regression equation
colnames(delivery_time)
#Syntax  model<-lm(y~x,data=data set name)
reg.model<-lm(Delivery.Time~Sorting.Time,data = delivery_time)
summary(delivery_time)
summary(reg.model)
#Predict for the historical data
pred<-predict(reg.model)
#Prepare a new data frame with pred and error
finaldata<-data.frame(delivery_time,pred,"Error"= delivery_time$Delivery.Time-pred)
