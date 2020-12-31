#importing the data set
airquality<-datasets::airquality
##top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
#all the rows but only 2 columns
airquality[,c(1,2)]
# 1 to 4 rows x colums
df<-airquality[c(1:4),c(1,2,3,4)]
df
#exlude 2th column remaining wil be printed
df[,-2]
#only 2nd row & all columns
airquality[2,]
#only first column
airquality[,1]
#discriptive stats
summary(airquality)
#discriptive stats for 1st column
summary(airquality)[,1]
#printing by name 
airquality$Ozone
#basic plotting
plot(airquality$Temp)
#x n y kind of plotting
plot(airquality$Temp,airquality$Wind,type = "p")
#plots & lines 
plot(airquality$Solar.R)
#all the variable in DS
plot(airquality)
#line represntation of wind
#p-points,l-lines,o-join,b-both_p&l hogaye idk how :)
plot(airquality$Wind,type = "l")
plot(airquality$Temp,type = "p")
plot(airquality$Wind,type = "o")
#
#plot(airquality$Ozone,type = 'p')
plot(airquality$Ozone,ylab = 'zone 
     concentration',xlab = 'no of instances',col='blue')
#horizontal bar plot
barplot(airquality$Ozone,airquality$Month, ylab = 'zone concentration',xlab ='no of intances',main = 'ozone level in mumbai city',
        col = 'blue',horiz = F,axes = T )
#histogram
hist(airquality$Wind)
hist(airquality$Ozone,main = 'ozone histogram',col = 'red',xlab = 'air AQI')

#boxplot
boxplot(airquality$Solar.R,main='solar boxplot')
boxplot(airquality)
#margin of the grid(mar)
#no of rows and columns(mfrow)
#whether a border os to be included (bty)
#lables postions (las:1for horizontal,las:0 for vertica)
#box means around the plot
par(mfrow=c(3,3),mar=c(2,3,2,1),las=0,bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
barplot(airquality$Ozone,main = 'ozone_concentration',xlab = 'con')
plot(airquality$Ozone,type = "l")
plot(airquality$Ozone,type = "o")
plot(airquality$Ozone,type = "b")
hist(airquality$Wind)
boxplot(airquality[,0:4])
