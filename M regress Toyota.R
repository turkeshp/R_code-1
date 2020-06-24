#toyota_r<-read.csv("/Volumes/Data/Course Content/DS content/Linear Regression/Toyoto_Corrola.csv")
toyota_r<-Toyota
#check if na values are there
colSums(is.na(toyota_r))
toyota<-na.omit(toyota_r)
colnames(toyota)
toyota<-toyota[,c(3,4,7,9,16,13,14,17,18)]

#toyota1<-subset(toyota,select = c("Price","cc") )
#Scatter Plot Matrix:
pairs(toyota)
#Correlation Matrix:
cor(toyota)
#Regression Model and Summary
model.car<-lm(Price~.,data = toyota)
summary(model.car)

#Multi-colinearity
install.packages("car")
library(car)
car::vif(model.car)
#########Model Validation
#Diagnostic Plots:
#Residual Plots, QQ-Plos, Std. Residuals vs Fitted
plot(model.car) 
#Residuals vs Regressors

residualPlots(model.car)
#Added Variable Plots
avPlots(model.car)
#QQ plots of studentized residuals
qqPlot(model.car)
#Deletion Diagnostics
influenceIndexPlot(model.car) # Index Plots of the influence measures
####Iteration 1 
#Remove 77th observation
toyota['Age2']<-toyota$Age_08_04*toyota$Age_08_04
toyota1<-toyota[-79,]
model.car1<-lm(Price~.,data = toyota1)
summary(model.car1)


plot(model.car1) 
residualPlots(model.car1)
qqPlot(model.car1)
influenceIndexPlot(model.car1)
########
toyota2<-toyota[-c(79,219),]

model.car2<-lm(Price~.,data = toyota2)
summary(model.car2)
qqPlot(model.car2)
influenceIndexPlot(model.car2)

###Final
model.car2<-lm(Price~.,data = toyota[-c(950,79,600,220,219,218,520,957,217,518),-c(7)])
summary(model.car2)
qqPlot(model.car2)
influenceIndexPlot(model.car2)
##Predict for new data

model.car3<-lm(Price~.,data = toyota[-c(950,79,600,220,219,218,520,957,217,518,949,948,947,946,945,944),-c(7)])
summary(model.car3)
qqPlot(model.car3)
influenceIndexPlot(model.car3) 

model.car4<-lm(Price~.,data = toyota[-c(950,79,600,220,219,218,520,957,217,518,949,948,947,946,945,944),-c(7)])
summary(model.car4)
qqPlot(model.car4)
influenceIndexPlot(model.car4)

testdata<-data.frame(Age_08_04=20,KM =2000,HP =90,Gears =5,cc=1500,
                     Quarterly_Tax=200,Weight=1600,Age2=400)

predict(model.car3,testdata)        

