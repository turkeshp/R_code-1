#Calories_consumed-> 
#predict weight 
#gained using calories consumed
#visualising the data 
boxplot(calories_consumed$Weight.gained..grams.,col ="blue")
boxplot(calories_consumed$Calories.Consumed,col = "red")
#Regression equation
#Syntax for  model<-lm(y~x,data=data set name)
#column names
colnames(calories_consumed)
model<- lm(Weight.gained..grams.~Calories.Consumed,data =calories_consumed)
summary(model)
#Preparing new dataframe
new_df=data.frame(Calories.Consumed=c(200,900,62))
gained=predict(model,new_df)
gained
#Predic from the historical data
pred<-predict(model)
pred
finaldata<-data.frame(calories_consumed,pred,"Error"= calories_consumed$Weight.gained..grams.-pred)
