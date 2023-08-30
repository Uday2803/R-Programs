ages=c(21,30,40,22,45,50,51,23,25,35)
plot(ages)

salary=c(21000,30000,40000,22000,45000,50000,23000,25000,51000,35000)
plot(salary)

plot(ages,salary)
plot(salary,ages)

help(plot)


data()
airquality=datasets::airquality
head(airquality,10)
tail(airquality,10)
names(airquality)
dim(airquality)
nrow(airquality)
ncol(airquality)

airquality[,c(1,2)] #all rows and first 2 column
df=airquality[,-6]#Except 6 column print remaining
df

summary(airquality[,1]) #gives summary of 1st column
summary(airquality$Temp) #gives summary of Temperature colomn

airquality$Wind  #gives value of wind column
summary(airquality$Wind)

summary(airquality) #summary of all column
# Visualization
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type = "p")
plot(airquality) # scatterplot
help(plot)
plot(airquality$Ozone,airquality$Month)
plot(airquality$Month,airquality$Ozone)
# point and lines

plot(airquality$Wind,type="p") # it prints point only
plot(airquality$Wind,type="l") # it prints lines only
plot(airquality$Wind,type="b") # it print both lines and point
help(plot)

plot(airquality$Wind,
     xlab = 'Ozen Concentaration',
     ylab = 'No of Instance',
     main='Ozen levels in NY city',
     col='red',
     type = 'l')
plot(airquality,col='red')
plot(airquality,col='green')

plot(airquality$Ozone,airquality$Solar.R)
plot(airquality$Solar.R,airquality$Ozone)

#Horizontal bar plot

barplot(airquality$Ozone,
        main = 'Ozone Concentration in air',
        ylab = 'Ozone levels',
        col='red',
        horiz = T,
        axes=T)
help("barplot")

# Histogram

hist(airquality$Temp)
hist(airquality$Temp,
     main = 'Solar Radiation value in air',
     xlab = 'Solar red',
     col='green',
     border = 'orange')
help(hist)


# Single box plot
# Box Plot gies us the outlier of the graph
help(boxplot)
boxplot(airquality$Wind)
boxplot(airquality$Wind,
        main='Boxplot Graph',
        xlab='',
        col='yellow',
        border = 'red',
        horizontal = T)

boxplot.stats(airquality$Wind)$out #gives outlier Values 
airquality$Ozone

# Multiple box Plot

boxplot(airquality[,1:4],
        main='Multiple Box Plots',
        horizontal = TRUE,
        col='pink')
#margin of the grid(mar)(bottom,left,top,right),
#no of rows and columns(mfrow),
#whether a border is to be included(bty)
#and position of the
#labels(las:1 for horizontal, las:0 for vertical)
#bty - box around the plot(o,n,7,L,C,U)
help(par)
par(mfrow=c(1,3),mar=c(1,2,1,2), las=0,bty="o")
plot(airquality$Ozone)
plot(airquality$Ozen,airquality$Wind)
plot(airquality$Ozone,type = "l")
plot(airquality$Wind,type = "l")
plot(airquality$Solar.R,type = "l")
barplot(airquality$Ozone,main = 'Ozone Concentraition',
        xlab = 'ozone levels',col = 'green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4],main="Multiple Box Plot")

#Consider NA Values

airquality
max(airquality$Wind)
min(airquality$Temp)
min(airquality$Solar.R)
mean(airquality$Solar.R)
mean(airquality$Wind)

mean(airquality$Solar.R,na.rm = T)
median(airquality$Ozone)
median(airquality$Ozone,na.rm = T)
min(airquality$Ozone)
min(airquality$Ozone,na.rm = T)

# Google following function as varience in R, etc
#var
#skewness
#kurtosis
#Density plot

var(airquality$Wind)
sd(airquality$Ozone) # sd- standerd deviation 
sd(airquality$Ozone,na.rm = T)

skewness(airquality$Ozone) #Error
kurtosis(airquality$Ozone) #Error

# Installing Packages


skewness(airquality$Ozone,na.rm = T)
kurtosis(airquality$Ozone,na.rm = T) 
skewness(airquality[,1:4],na.rm = T)

# Density Plot

plot(density(airquality$Wind))
plot(density(airquality$Ozone,na.rm = T))
??density #Check kerenal desity estimation

## in class excercise

e_quakes=datasets::quakes




























