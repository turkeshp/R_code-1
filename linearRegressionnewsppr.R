#Load data
Nd<-read.csv("/C/Users/turke/Downloads/NewspaperData.csv")

# Visualization
boxplot(NewspaperData$sunday,col="dodgerblue4")
boxplot(NewspaperData$daily,col="dodgerblue4")

#Regression equation
#Syntax  model<-lm(y~x,data=data set name)
#column names
colnames(NewspaperData)
#Model building
model<- lm(sunday~daily,data =NewspaperData[,-1])
summary(model)
#Preparing new data frame with new data
new_daily=data.frame(daily=c(201.860))
#Predict for the new data
sun1=predict(model,new_daily)
#Print predicted value
sun1

#Predict for daily variable from the historical data
pred<-predict(model)
#Print predicted values
pred
#Prepare a new data frame with pred and error
finaldata<-data.frame(NewspaperData,pred,"Error"= NewspaperData$sunday-pred)

