"hello world"
'hello world'
5
1
10
5 10 20
name1="uday"
name1
name2="bhshan"
name="saurabh"
name
age=25
age
x=21
x
name
num="20"
age=age5
age
num=num+5
4*8
text="Excellent"
paste("ExcelR is",text)
paste("Students are",text)
paste("My name is :",name)
var1 =va2= var3="orange"


#leagal variable names


myvar="uday"
my_var="bhushan"
MYVAR="saurabh"
myVar="manoj"
myvar2="harshal"
this.year=2023

#illegal variable names
2myvar="s"
my-var="s"
my var="s"
_my_var="s"
my_v@var="s"
TRUE="s"

# data types in R
# Numeric/float -decimal whole +ve -ve

x=10.5
class(x)
class(name)

#Integer - whole +ve -ve
y=1000L
class(y)

#character/string
x=" R is exciting"
class(x)

#logical/booolean
x= TRUE #or T,FALSE,F
class(x)
x=F
x=TRUE
x=T

3>5
5>3
5==5
1 !=6 # !=not equal to

# Arithmetic Operator
x=20
y=3

x+y
x-y
x*y
x/y
x%y
x^y #float/decimal result
x^2
x%%y #gives remainder
x %/% y # integer division

2*pi*6321
pi
2*pi

??Constants
letters
pi
month.name

# Assignment operator

x=50
50->x

#Built in function

max(25,22,65)
min(2,65,3,1)
sqrt(25)
abs(-4.5)

#Data Structure : vector,DataFrames
#HOMOGENEOUS VECTOR
# vector of string
fruits = c("Banana","Apple","Orange","Strawberry")
class(fruits)
#vector of number
n1=c(10,20,30)
class(n1)
n2=c(T,F,TRUE,FALSE)
class(n2)

#Heterogeneous Vector
mix=c(21,5.2,TRUE,"Mango",5L,F)
class(mix)

x=c(2,5,8,4)
y=c(1,9,9,9)
 x+y
x*y
x*5
(x+y)*1.5

#Sequence

1:10
a:z
A:Z

1:1000
40:45
seq(1,50,5) #ex 1+5=6 6+5=11 ..... so on upto 50
seq(1,50,by=3) #by means increase value by 3
seq(1,10)
seq(10,1,-2)
n1=1.5:6.3 #default increment value is 1
n1
 
#Repetation 

rep(45,7)
rep("mango",5)

#Random Sample

sample(1:50,3)
sample(1:10,200) #error default value for replace=FALSE
sample(1:10,200,replace = TRUE)
sample(c("hp","apple","lenovo"),7,replace = T)
sample(c("hp","apple","lenovo"),2)

##########################################


#Indexing / Accessing VEctor Elements

x=c(2,5,6,3,4,8,9)

x[7]
x[4]
 
x[c(4,5)]
x[-1] #except 1 element print all the remaning elements

x[-2]
x[c(-2,-3)] #for more than 1 element

x[1]=3 #for replcement the element
x

x[-1]=5
x
x[3]=6
x[5]=9
x
x[c(1,3)] #1st and 3rd Element will be display
x[1,3] # raise in error

y=c(1,9,9,9)
y
y<9

y[y<9]=7
y

y[y>7]=10
y

#Relational operaters with vectors

marks=c(60,70,80,50,90)
marks>50 #It gives Logical Answer

marks[marks>50] #It gives the values greater than 50
marks==80
names=c("uday","saurabh","bhushan","manoj")
p1=c('a','b')
"uday" %in% names # Checked that the given name is present in the list
"Uday" %in% names # It is Case Sensetive so it gives error

#SLICING

marks

marks[3:7]
marks[4]

marks[3]= #Replace 3 number by 97
marks

marks[-3]=100 #except no 3 repace all the number by 100
marks

marks[6]=90 # add the 6 number
marks

price=c(2999,5665,4563,1221,5648,7896,563,373)
price[2:7]


#select elements fro a vector with conditions

price[price>1000]

sort(price) #sort the elements by smaller to larger

sort(price,descending=T) # rise error
help(sort)
sort(price,decreasing = T) # sort element lager to smaller

help(mean)
length(marks) #Gives length of the vector

help(paste)
paste(1:12) # print number 1 to 12

nth=paste(1:12,c("st","nd","rd",rep("th",9))) 
nth

month.name
month.abb


paste(month.abb,"is the",nth,"month of the year")


# Bsic Function On vectors

price
length(price)
max(price)
min(price)
sum(price)
mean(price)
median(price)
mode(price)


#Data Frames
#Slicing Data Frames

a=c(42,18,91,87,66)
b=c("p","q","r","s","t")
data.frame(a,b)
df=data.frame(a,b)
df
df1=data.frame(
  Training=c("Strength","Stamina","Other"),
  Pulse=c(100,150,200),
  Duration=c(60,30,45)
)

df1

df1[,1] #All Rows, of 1st Column

df1[2,] #2nd value anda other remaning part of the row

df1[,]
df1[,3] # gives only 3 index

df1$Training # gives all the product involves in index tranning

df2=data.frame(
  height=c(150,160),
  weight=c(65,72)
)
df2

food=data.frame(name=c("Pav Bhaji","Panner Masala","kaju Katali","Chicken","Jelebi","Mutton Biryani"),
                type=c("Veg","Veg","Veg","NonVeg","Veg","NonVeg"),
                taste=c("Spicy","Spicy","Sweet","Spicy","Sweet","Spicy"),
                price=c(120,150,130,160,100,500))
food

food[food$type=="Veg",] #Only for veg items

food[food$type=="NonVeg",c(1,4)]
#Or
food[food$type=='NonVeg',c("name","price")]

# All Spicy Food less Than 300

food[food$taste=='Spicy' & food$price<300,]
food[food$taste=='Spicy' | food$price<300,]

food[food$taste=='Spicy' & food$price>300,]

# Orange,mtcars are built in data set. learn with this dataset.

Orange
mtcars

dim(mtcars) # Gives the number of row and column dim=diamentions
nrow(mtcars) # gives no of rows
ncol(mtcars)
str(mtcars) # Gives Stucture - col name data type nad values
summary(mtcars)

help(mtcars)
mtcars$cyl # gives value of cylinder column value
table(mtcars$cyl) #there are 11 cars having 4 cylinder, 7 cars - 6 cyl
mtcars$gear
table(mtcars$gear)

#USArrests - another dataset
USArrests
help("USArrests")
View(USArrests) 
tail(USArrests) # by deafault it gives 6 values
head(USArrests) # by deafault it gives 6 values

head(USArrests,8) # Gives First 8 values
tail(USArrests,10)

#Check All The Datasets

data()







































