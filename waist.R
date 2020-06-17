#Load data
Nd<-read.csv("/C/Users/turke/Downloads/NewspaperData.csv")

# Visualization
boxplot(NewspaperData$sunday,col="dodgerblue4")
boxplot(NewspaperData$daily,col="dodgerblue4")

#Regression equation
#Syntax  model<-lm(y~x,data=data set name)
#column names
colnames(WC_AT)
#Model building
model<- lm(AT~Waist,data =WC_AT)
summary(model)
#Preparing new data frame with new data
new_df=data.frame(Waist=c(40,75,200))
#Predict for the new data
sun1=predict(model,new_df)
#Print predicted value
sun1

#Predict for daily variable from the historical data
pred<-predict(model)
#Print predicted values
pred
#Prepare a new data frame with pred and error
finaldata<-data.frame(WC_AT,pred,"Error"= WC_AT$AT-pred)

