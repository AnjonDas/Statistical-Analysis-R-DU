####Data Analysis part####


x<-c(2,4,6,7)
x
x[2]
x[c(2,3)]
names(x)<-c('Rahim','Karim', 'Arif')
x
x['Arif']

y<-c("aple","banana","orange")
y
sum(x)
mean(x)
sum(x[c(3,4)])
max(x)
help("max")
z<-c(50,60,30,45,78)
z
ls()
ls.str()                      # to see all varibales

.hid<-4                       # Hidden Variable
ls.str(all.names = TRUE)      # To see hidden variable
rm(z)                         # to delete variable
rm(.hid, y)                   # to delete more than 1 variable
ls.str(all.names = TRUE)
x<-c(4,6,1,9)                 #I can use a variable once only
y<-c(70,1,5,30)
x==y                         # checking equality of x and y
x<y
x>y
z<-c(3,5,7)                  
x==z                         ##when elements of two variables are not equal
x<-c(4,6,1,9) 
x+1
x+z
x<-c(1,2,"apple",'banana')   #When elements are mixed R takes all the elements as characters
x<-c(2,3,4,5)
y<-c(4,5,3,2)
x-y
x*y
x/y
log(x)
sin(x)

#### R text Book(If anyone want to know how to write code this book is a gem)####


sin(90)                     #Give value in Radiun
sin(90*pi/180)              #in Degree
z<-c(6,7,73,10)
sin(z)
sin(z)-cos(z)               #this function is not available in R that's why we have to use user defined function
scdiff<-function(x){return(sin(x)-cos(x))}  # user defined function
scdiff(z)
x<-c(1,2,3,4,5,6,7,8,9,10)
x<-1:10
x
x<-10:100
x
p<-50:10
p
p<-seq(from=10, to=30, by=2)
p
p<-seq(from=10, to=30, by=5)
p
p<-seq(from=50, to=100, length.out=5)           #distribute value in an interval
p
x<-c(5,5,5,5,5,5)
x<-rep(5,time= 10)            # Repeating number
x


####Data frame creating####
y<-data.frame()              
edit(y)
y                            #still showing o column and 0 rows
y<-edit(y)                   
y                            #Now its showing data
temp<-edit(y)
temp
y<-temp
y

####Importing Data from excel file using Import from Environment windows####
View(xlfile)
xlfile
####Importing Data from excel file using Library(readxl)####
library(readxl)
xlfile<-read_excel("F:/Statistical Analysis R (Proshantho Kumar)/Sample Data.xlsx", range="A1:H9")



####Depositing output Data in a different file####
sink("output.txt")
xlfile
sink()
xlfile
getwd()

####Changing xlfile directory txt file####
#sink("F:/Statistical Analysis R (Proshantho Kumar)/xlfile.txt")
#xlfile
#getwd()
####importing data google sheet####

####Importing data as csv####
csvfile<-read.csv("F:/Statistical Analysis R (Proshantho Kumar)/Sample Data.csv")
csvfile
csvfile<-read.csv("F:/Statistical Analysis R (Proshantho Kumar)/Sample Data.csv", header = FALSE)
csvfile
csvfile<-read.csv("F:/Statistical Analysis R (Proshantho Kumar)/Sample Data.csv", header = FALSE, 
                  col.names = c("A","B","C","D","E","F","G","H"))
csvfile

####Importing data using fixed width ####

#### Geometric sequence in R ####
install.packages(bsts)
library(bsts)
GeometricSequence(5,2,3)
help("GeometricSequence")
View(GeometricSequence(5,2,3))

#### importing data from table####
datafile<-read.table("F:/Statistical Analysis R (Proshantho Kumar)/Student data.txt")
datafile
datafile2<-read.table("F:/Statistical Analysis R (Proshantho Kumar)/Student data.txt", header=TRUE)
datafile2
datafile3<-read.table("F:/Statistical Analysis R (Proshantho Kumar)/Student data 2.txt", header=TRUE, sep=':') # If column is separated using Colon we use sep
datafile3
datafile4<-read.table("F:/Statistical Analysis R (Proshantho Kumar)/Student data 2.txt", header=TRUE, sep=':') # 
datafile4
datafile5<-read.table("F:/Statistical Analysis R (Proshantho Kumar)/Student data 2.txt", header=TRUE, sep=':', na.strings = '-') # For replacing '-' with 'NA'
datafile5

#### Taking above data as output in csv format####
write.csv(datafile,"F:/Statistical Analysis R (Proshantho Kumar)/Student data.csv")
write.csv(datafile,"F:/Statistical Analysis R (Proshantho Kumar)/Student data.csv", row.names = FALSE)
write.csv(datafile,"F:/Statistical Analysis R (Proshantho Kumar)/Student data.csv", row.names = FALSE, quote = FALSE)

#### Specific datafile saving from Environment ####
save(datafile, file= "F:/Statistical Analysis R (Proshantho Kumar)/save.txt")
getwd()

####deleting datafile ####
rm(datafile)

#### Reloading save.text datafile that I deleted ####
load("F:/Statistical Analysis R (Proshantho Kumar)/save.txt")
datafile

#### Generally all the data from environment get deposited in "Rdata"  file, we can change this directory using following command ####
#save.image(file= " directory wherever we to save the data")

#### List data type ####
# All list data are heterogeneous, that means you can store a number and character data at a time
lst<-list(1,2,3,'apple', 'banana')
lst
lst[[4]]
lst2<-list(20,40,c(2,4,5),60,c('apple','banana'))  #adding vector with list data type
lst2
lst2[[3]]
lst2[[3]][2]    #find out 2th data from from 3th vector
names(lst2)<-c('item1', 'item2', 'item3', 'item4', 'item5')
lst2
lst2$item4
lst2$item5
lst2$item5[2]

#### Matrix data type ####
# it is nothing but a list or vector data type, just it has a dimension unlike list or vector 
x<-c(2,3,4,5,6,7)
x
dim(x)<-c(3,2)    #creating a matrix from a vector
x
dim(lst2)<-c(3,2)    # showing an error because lst2 variable contains 5 data
lst3<-list(6,5,7,4,8,3)
dim(lst3)<-c(3,2)     # it makes a matrix by column
lst3
lst4<-list(1,2,3,4,5,6)
mat<-matrix(lst4,3,2,byrow = TRUE)   #it makes a matrix by row
mat
mat[,1]
mat[3,]
mat[2,2]

y<-c('dhaka','sylhet','dhaka','rajshahi','rajshahi')
y
fact<-factor(y)
fact
fact<-factor(y, levels=c('dhaka','rajshahi','sylhet','bogura'))
fact
datafile
y
fact<-factor(y)
fact
fact<-factor(y, levels=c('dhaka','rajshahi','sylhet','bogura','chittagon'))
fact
x
z<-c(4,3,6,2,8)
sort(z)
library(readx1)
SampleData <-read_excel("C:/Data/SampleData.xlsx", +  range = "b3:f7")
View(SampleData)
SampleData
csvfile<-read.csv('c:/Data/SampleData.csv')
csvfile
csvfile<-read.csv('c:/Data/SampleData.csv', header=FALSE)
csvfile
help('mean')


x<-c(1,4,5,3,6)
x
x<-c(x,4,7,3)
x
x[9]<-6
x
length(x)
x<-append(x,c(7,2),after=3)
x
x<-x[-3]
x
x<-[-3:-5]
x
z<-x[x>4]
z
lst<-list(3,5,2,7,9,4)
lst
names(lst)<-c('i1','i2','i3','i4','i5','i6')
lst
lst[c('i3','i5')]<-NULL
lst
b<-c(3,6,2,7,4:50,3,56)
b
lst
mean(lst)
unlist(lst)
c<-unlist(lst)
c
mean(c)
lst
lst[lst>=5]<-NULL
lst
x
x<-c(x,5,3)
x
length(x)
mat<-matrix(x,3,3)
mat
t(mat)
solve(mat)
mat2<-(c(1:9),3,3) 
d<-c(1:9)
mat2<-matrix(d,3,3) 
mat2
mat*mat2
mat%*%mat2
diag(5)
mat
colnames(mat)<-c('col1','col2','col3')
mat
rownames(mat)<-c('row1','row2','row3')
mat
mat2
t(mat2)
dfrm<-data.frame()
dfrm<-edit(dfrm)
datafile
newdata<-data.frame()
newdata<-edit(newdata)
newdata
datafile<-cbind(datafile,newdata)
datafile
dfile<-data.frame()
dfile<-edit(dfile)
dfile
upfile<-rbind(datafile,dfile)
upfile
upfile['roll']
upfile[['roll']]
upfile<-upfile[,c('name','marks','roll','blood_group','address')]
upfile
subset(upfile,select=c(name,marks))
upfile
dfile2<-subset(upfile,select=c(name,marks))
dfile2
upfile
subset(upfile,select=c(name,roll),subset=(marks>=400))
dfile3<-subset(upfile,select=c(name,blood_group),subset=(address='dhaka'))
dfile3
?mean
??'condition'
colfile<-data.frame()
colfile<-edit(colfile)
colfile
merge (upfile,colfile,by='name')
colfile<-edit(colfile)
upfile<-merge(upfile,colfile,by='name')
upfile
mean(upfile)
mean(upfile$marks)
mean(upfile$roll)
z<-(upfile$marks-mean(upfile$marks))/sd(upfile$marks)
z
z1<-with(upfile,(marks-mean(marks))/sd(marks))
z1
attach(upfile)
marks
z3<-(marks-mean(marks))/sd(marks)
z3
detach()
marks
file2<-read.csv("C:/Data/csvfile3.csv")
file2


v<-c(2,4,6,3,6)
v2<-c(4,7,3,7,8)
v+v2

#Creating a vector and factor
vec<-c(40,2,34,5,6,45)
fac<-factor(c('a','b','a','c','b','a'))

#Splitting vector according to factor

#Method 1: this method will always return a list
groups<-split(vec,fac)
groups

#Method 2: this method will return a metrix if all factors
# are equal in length. otherwise it will return a list
groups2<-unstack(data.frame(vec,fac))
groups2

#Loading a dataset named Cars93
library(MASS)
Cars93
?Cars93

g<-split(Cars93$MPG.city,Cars93$Origin)
g
median(g[[1]])
median(g[[2]])

#Applying function to each list elements

g    #this is a list

#Method 1: this  will  return a list always
lst<-lapply(g,mean)
lst

#Method 2: this will return a metrix if all elements have equal length
v<-sapply(g,mean)
v

#Examples
lapply(g,length)
sapply(g,length)
sapply(g,range)
tests<-lapply(g,t.test)
tests

#We want those mpg data of cars higher than 20
lapply(g,function(x){x[x>20]}) 
sapply(g,function(x){x[x>20]})

#Applying function to all matrix rows and coloumns
mtrx<-matrix(vec,2,3)  #creating a matrix from vec vector defined above
mtrx

#Applying function to it's rows
row_sum<-apply(mtrx,1,sum)
row_sum

#Applying function to it's columns
sq_sum<-apply(mtrx,2,function(x){sum(x^2)})

#Applying fuction to dataframe coloumns
#Loading a dataframe
data('iris')
iris

#Applying function to each column
range<-lapply(iris[,-5],range)
range
range2<-sapply(iris[,-5],range)
range2

#A bit complicated example
cors<-sapply(iris[,c(-4,-5)],cor, y=iris$Petal.Width)
cors

#Grouping dataframe's data and applying function
virginica<-subset(iris,select=-Species or select= c(Petal.Length,Petal.Width),  subset=(Species=='virginica'))   
virginica
sapply(virginica,sum)

#A more easy way
by(iris[,-5],iris$Species,sum)
by(iris[,-5],iris$Species,summary)

#Applying function to a single vector
sp<-iris$Sepal.Length
sp
gr<-split(sp,iris$Species)
gr
lapply(gr,sum)

tapply(iris[[5]],iris$Species,sum)
tapply(iris$Sepal.Length,iris$Species,length)

#Vectorizing a function
vec1<-c(4,6,7)
vec2<-c(3,4,5)
vec1+vec2
gcd<-function(a,b){
  if(b==0) return(a)
  else return(gcd(b,a%%b))
}
gcd(vec1,vec2)
mapply(gcd,vec1,vec2)



#Length of a string
name<-c('Rahim','karim','Arif')
address<-c('Mirpur-DH','Habiganj-SY','Pabna-RA')
nchar('Dhaka')
nchar(name)           #Number of character in each string
length(name)          #It returns number of elements in an object


#Concatenating strings
#Structure: paste(string1, string2,string3,........,sep='separator_character')
paste('I','live','in','Dhaka')
paste('I','live','in','Dhaka',sep='')         #using string separator
paste('I','live','in','Dhaka',sep='-') 
paste('I','live','in','Dhaka',sep='0') 

#Example
paste(name,'lives in', address)
paste(name,'lives in', address, collapse= ', and ')

#Selecting a part of a string
#Structure: substr(String, start_position, end_position)
substr('Dhaka',1,3)
substr(address,1,3)

#Example
#Selecting last two  characters
substr(address, nchar(address)-1, nchar(address))

#Spliting string using a delimiter
#Structure: strsplit(string, delimiter)
strsplit('Bhawal, Gazipur,Dhaka',',')
sentence<-'Rahim is a student'
strsplit(sentense,'is a')

#Example
person1<- 'Rahim lives in Bhawal, Gazipur,Dhaka'
person2<- 'Kahim lives in Savar, Dhaka,Dhaka'
person3<- 'Masud lives in Pabna Sadar, pabna , Rajshahi'

temp<-strsplit(c(person1,person2,person3), ',')
temp
temp<-unlist(temp)
temp
temp<-unlist(strsplit(temp,'lives in'))
temp
length(temp)
temp[length(temp)]
temp[1]
seq(1,length(temp),4)
person_name<-temp[seq(1,length(temp),4)]
person_name
upazilla<-temp[seq(2,length(temp),4)]
upazilla
district<-temp[seq(3,length(temp),4)]
district
division<-temp[seq(4,length(temp),4)]
division
data_table<-data.frame(person_name,upazilla,district,division)
data_table

#writing same code in shortest way
#Input

person1<- 'Rahim lives in Bhawal, Gazipur,Dhaka'
person2<- 'Kahim lives in Savar, Dhaka,Dhaka'
person3<- 'Masud lives in Pabna Sadar, pabna , Rajshahi'
person4<- 'Arif lives in Mirpur, Dhaka Metro, Dhaka'

str_vec<-c(person1,person2,person3,person4)

#Comands

temp<-unlist(strsplit(unlist(strsplit(str_vec,  ',')), 'lives in'))
person_name<-temp[seq(1,length(temp),4)]
upazilla<-temp[seq(2,length(temp),4)]
district<-temp[seq(3,length(temp),4)]
division<-temp[seq(4,length(temp),4)]
data_table<-data.frame(person_name,upazilla,district,division)
data_table

#Replacing Characters
#Structure: sub(old,new,string)
perl1<-'Name is Rahim. Age is 24'
sub('is ','-',perl1)
gsub('is ','-',perl1)


#Back to previous example
#Input

person1<- 'Rahim lives in Bhawal, Gazipur,Dhaka'
person2<- 'Kahim lives in Savar, Dhaka,Dhaka'
person3<- 'Masud lives in Pabna Sadar, pabna , Rajshahi'
person4<- 'Arif lives in Mirpur, Dhaka Metro, Dhaka'

str_vec<-c(person1,person2,person3,person4)

#Comands

temp<-sub('lives in', ',', str_vec)
temp
temp_list<-strsplit(temp, ',')
temp_list
dfrm<-do.call(rbind,temp_list)
dfrm
dfrm<-data.frame(dfrm)
dfrm
colnames(dfrm)<-c('person_name','upzilla','district','division')
dfrm

#In short
dfrm<-data.frame(do.call(rbind,strsplit(sub('lives in',',', str_vec),',')))
colnames(dfrm)<-c('person_name','upzilla','district','division')
dfrm

#Creating pair combinations
#Structure: outer(array1, array2, function,arguments_for_function)

gr1<-c('BD','IN','SR')
gr2<-c('AU','EN','NZ')
round_1<-outer(gr1,gr2,paste,sep='-')
round_1
round_2<-outer(gr1,gr1,paste,sep='-')
round_2
lower.tri(round_2)
round_2<-round_2[lower.tri(round_2)]
round_2





#Date & time visit: https://www.stat.berkeley.edu/~s133/dates.html

#Printing current date

sys.Date()
sys.time()
sys.timezone()

#converting string to date
#Structure: as.date('String',format='')

as.Date('2018/09/26')
as.Date('15/06/2010' format='%d/%m/%Y')
as.Date('15-06-2010' format='%d-%m-%Y')
as.Date('15:06:2010' format='%d":m:%Y')
as.Date('15/06/2010' format='%d/%m/%Y')
as.Date('15/06/10' format='%d/%m/%Y')
as.Date('15/06/10' format='%d/%m/%y')
as.Date('15/June/10' format='%d/%B/%y')
as.Date('15/Jun/10' format='%d/%b/%y')

class('15/06/2010')
class(as.Date('15/06/2010' format='%d/%m/%Y'))

help("strftime")


#Converting Date to String
format(Sys.Date(),format='%d/%m/%Y')
as.character(Sys.Date(),format='%d/%m/%y')

#Converting to date

ISOdate(2015,05,24)
ISOdate(2015,05,24,18,30,23)
as.Date(ISOdate(2015,05,24))

years<-c(2010,2013,2012,2015)
months<-c(2,4,6,3)
days<-c(3,23,25,21)
ISOdate(years,months,days)
as.Date(ISOdate(years,months,days))

#Printing a part of a date
d<-as.Date("2010-03-15")
d
p<-as.POSIXlt(d)
p
p$mday
p$mon       #0-11: 0=january, 11=december
p$mon+1
p$year      #counts from 1900
p$year+1900
p$wday      #0 means sunday


#Creating a sequence of date

s<-as.Date('2014-01-29')
e<-as.Date('2016-02-12')
seq(s,e,by='4 months')
seq(s,e,by='45 days')
seq(s,by='month',length=10)      #Look at February 29
seq(s,e,length.out=5)


#Intoduction to plot
# Creating a scatter plot

x<-c(5,3,7,8,2,8)
y<-c(23,43,65,28,21,32)
plot(x,y)

#Ploting iris data

iris 
plot(iris[,-5])
plot(iris$Sepal.Length,iris$Sepal.Width)

#Adding title and label

plot(iris$Sepal.Length,iris$Sepal.width, main='Iris Sepal Width vs Sepal Length')

plot(iris$Sepal.Length,iris$Sepal.width, main='Iris Sepal Width vs Sepal Length' , xlab='Sepal Length', ylab='Sepal Width')
or
plot(iris$Sepal.Length,iris$Sepal.Width,
     main='Iris Sepal Width vs Sepal Length',
     xlab='Sepal Length',
     ylab='Sepal Width')

#Adjusting Axes
plot(iris$Sepal.Length,iris$Sepal.Width,
     xlim=c(4,10),
     ylim=c(1,5),
     main='Iris Sepal Width vs Sepal Length',
     xlab='Sepal Length',
     ylab='Sepal Width')


#Adding Grid line
?plot
plot(iris$Sepal.Length,iris$Sepal.Width,
     main='Iris Sepal Width vs Sepal Length',
     xlab='Sepal Length',
     ylab='Sepal Width',
     type='n ')
grid()
plot(iris$Sepal.Length,iris$Sepal.Width)

#Properties of grid and points
#install.package('ggplot')
?grid
plot(iris$Sepal.Length,iris$Sepal.Width,
     main='Iris Sepal Width vs Sepal Length',
     xlab='Sepal Length',
     ylab='Sepal Width',
     type='n ')
grid(nx=10,ny=10,col='grey',lty='solid',lwd=1)
points(iris$Sepal.Length,iris$Sepal.Width)

#Wrong way: grid lines are superimposed over points

plot(iris$Sepal.Length,iris$Sepal.Width,
     main='Iris Sepal Width vs Sepal Length',
     xlab='Sepal Length',
     ylab='Sepal Width',
     pch=19)
grid(nx=10,ny=10,col='red',lty='solid',lwd=2)

#correct way
plot(iris$Sepal.Length,iris$Sepal.Width,
     main='Iris Sepal Width vs Sepal Length',
     xlab='Sepal Length',
     ylab='Sepal Width',
     type='n ')
grid(nx=10,ny=10,col='red',lty='solid',lwd=2)
points(iris$Sepal.Length,iris$Sepal.Width,pch=19)



#Scatter plot review
plot(iris$Sepal.Length,iris$Sepal.Width,
     main='Iris Sepal Width vs Sepal Length',
     xlab='Sepal Length',
     ylab='Sepal Width',
     pch=1)

plot(iris$Sepal.Length,iris$Sepal.Width,
     main='Iris Sepal Width vs Sepal Length',
     xlab='Sepal Length',
     ylab='Sepal Width',
     pch=2)

#Different points for different groups
iris$Species
class(iris$Species)    #It's a factor
as.integer(iris$Species)     #Each factor level gets a number

plot(iris$Sepal.Length,iris$Sepal.Width,
     main='Iris Sepal Width vs Sepal Length',
     xlab='Sepal Length',
     ylab='Sepal Width',
     pch=as.integer(iris$Species))

#Adding legends for each points
levels(iris$Species)      #prints only levels of a factor


plot(iris$Sepal.Length,iris$Sepal.Width,
     main='Iris Sepal Width vs Sepal Length',
     xlab='Sepal Length',
     ylab='Sepal Width',
     pch=as.integer(iris$Species))
legend( x=6,y=4.5,
        legend=levels(iris$Species),
        pch=1:length(levels(iris$Species)))

#Drawing Regression line
setosa<-subset(iris,select=c(1.4),subset=(Species=='setosa'))
setosa
plot(setosa$Sepal.Length,setosa$Sepal.Width,
     main='Iris Sepal Width vs Sepal Length',
     xlab='Sepal Length',
     ylab='Sepal Width')
line_data<-1m(setosa$Sepal.Width~setosa$Sepal.Length)  #Remember 1m(y-x)
line_data
abline(line_data)

#Adding legend to regression line

line_data$coefficients
legend(x=4.3,y=4.4
       legend=paste(c('Intercept','Slope'),round(line_data$coefficients,4),sep='=')
       
       
       
       line_data$coefficients
       paste(c('Intercept','Slope'),round(line_data$coefficients,4),sep='=')
       legend(x=4.3,y=4.4
              legend=c('A','B'))
       
       
       
       #ploting multiple datasets
       #visit:https://bookdown.org/ndphillips/YaRrr/plotting1.html
       setosa<-subset(iris,select=c(1.4),subset=(Species=='setosa'))
       versicolor<-subset(iris,select=c(1.4),subset=(Species=='versicolor'))
       virginica <-subset(iris,select=c(1.4),subset=(Species=='virginica'))
       
       plot(setosa$Sepal.Length,setosa$Sepal.Width)
       plot(versicolor$Sepal.Length,versicolor$Sepal.Width)
       
       
       #Finding appropriate axes limits
       xlimits<-range(c(setosa$Sepal.Length,versicolor$Sepal.Length,virginica$Sepal.Length))
       xlimits
       
       ylimits<-range(c(setosa$Sepal.Length,versicolor$Sepal.Length,virginica$Sepal.Length))
       ylimits
       
       plot(setosa$Sepal.Length,setosa$Sepal.Width
            xlim=xlimits,
            ylim=ylimits,
            pch=19 )
       points(versicolor$Sepal.Length,versicolor$Sepal.Width
              pch=2)
       lines(virginica$Sepal.Length,virginica$Sepal.Width
             lty=2)
       
       setosa_line<-1m(setosa$Sepal.Width~setosa$Sepal.Length) 
       abline(setosa_line)
       
       virginica_line<-1m(virginica$Sepal.Width~virginica$Sepal.Length) 
       abline(virginica_line)
       
       
       
       #Adding horizontal and vertical line
       abline(v=6)
       abline(v=3)
       
       #creating bar-chart
       avg_sepal_length<-tapply(iris$Sepal.Length,iris$Species, mean)
       avg_sepal_length
       barplot(avg_sepal_length)
       
       #various propertiesof bar plot
       barplot(avg_sepal_length,
               main='Mean Sepal Length',
               width=2,
               xlim=c(0,10),
               ylim=c(0,8),
               space=c(0.2,0.2,0.2),
               col=c('Red','Blue','Green'),
               names.arg=c('Setosa','Versicolor','Virginica'),
               ylab='Mean Sepal Length',
               horiz=F,
               legend.text=c('Setosa','Versicolor','Virginica'))
       
       
       
       #Adding text to top of bar
       
       text(c(1,3,3,8,6,2),avg_sepal_length+0.3. labels=avg_sepal_length)
       ?barplot
       
       #Plotting Boxplot, Histogram , q-q plot, functions and exporting graphs
       #Boxplot
       boxplot(iris$Sepal.Width~iris$Species,
               main='Iris Sepal Width Boxplot',
               xlab='Species',
               ylab='Sepal Width')
       
       #Histogram
       
       library('MASS')
       Cars93
       hist(Cars93$MPG.city, 20)
       
       #Labeling
       hist(Cars93$MPG.city, 20,
            main='City MPG',
            xlab='MPG')
       
       #Histogram using probability scale or density scale
       hist(Cars93$MPG.city, 20,
            main='City MPG',
            xlab='MPG',
            prob=T)
       
       #Adding density line
       lines(density(Cars93$MPG.city))
       
       #ploting discreate histogram
       table(Cars93$MPG.city)      #generates frequency table from data
       plot(table(Cars93$MPG.city), type='h')
       
       #Quantile-Quantile plot
       qqnorm(Cars93$MPG.city)
       qqline(Cars93$MPG.city)
       
       women  #A dataset
       qqnorm(women$height)
       qqline(women$height)
       
       #Using log scale
       Cars93$Price
       qqnorm(log(Cars93$Price), main='Q-Q plot: Log(Price)' )
       qqline(log(Cars93$Price))
       
       #Graps of function
       curve(sin, -10, -10)
       curve(dnorm, -4, 4, main='Standard Normal Distribution')
       
       #Graphs of user defined function
       sin_deg<-function(x){
         sin(x*pi/180)
       }
       abline(h=0)
       
       curve(sin_deg, -360,360)
       
       user_function<-function(x){
         x^3-4*x^2
       }
       
       curve(user_function, -3, 10)
       text(0, 150, labels=c( x^3-4*x^2))
       
       
       #Multiple graphs in a window
       par(mfrow= c(2,2))
       plot(iris$Sepal.Length,iris$Sepal.Width,
            main='Sepal.Width vs Sepal.Length')
       qqnorm(Cars93MPG.city, main='Q-Q plot of City MPG' )
       hist(Cars93$MPG.city, 20,
            main='City MPG',
            xlab='MPG',
            prob=T)
       plot(table(Cars93$MPG.city), type='h'
            main='Discreate Histogram',
            xlab='MPG City',
            ylab='Frequency')
       par(mfrow=c(1,1))
       
       #Exporting graph to external file
       #method 1
       #pdf("rplot.pdf"):pdf file
       #png("rplot.png"):png file
       #jpeg("rplot.jpeg"):jpeg file
       #postscript("rplot.ps"):postscript file
       #bmp("rplot.bmp"):bmp file
       #win.metafile("rplot.wmf"):win.metafile file
       
       png('histogram.png')
       hist(Cars93$MPG.city, 20, 
            main='City MPG',
            xlab='MPG',
            prob=T)
       dev.off()
       
       #method 2
       win.graph()
       dev.set(0)
       hist(Cars93$MPG.city, 20, 
            main='City MPG',
            xlab='MPG',
            prob=T)
       savePlot('histo.png', type='png')
       dev.set(0)
       dev.set(4)
       
       
       
       ***CLASS-10, PART-1 & 2:
         
         #Random Samples And Probability
         #Selecting  items randomly
         
         item<-c('red','green','yellow','black','orange')
       choose(5,3)      #ways of choosing 3 items from 5 items
       combn(items, 3)   #list all possible samples
       
       #Generating random sample
       sample(items)     #rearranging randomly
       sample(items, 3)    #selecting 3 items randomly without replacement
       sample(items , 3, replace= T)    #Selecting 3 items randomly with replacement
       dice<-c(1,2,3,4,5,6)
       sample(dice, 1)
       sample(dice, 2, replace=T)
       sample(dice, 50, replace=T)
       
       #Calculating Proportions(Probability)
       jar<-c('red','red','red','yellow','yellow','green')
       
       #Using formula
       prob_red<-length(jar[jar=='red'])/length(jar)
       prob_red
       
       #Easiest way
       mean(jar=='red')
       
       #Eaxmple
       dice_fifty<-sample(dice, 50, replace=T)
       dice_fifty
       
       mean(dice_fifty==2)    #Proportion of 2
       mean(dice_fifty==4)    #Proportion of 4
       mean(dice_fifty==3)    #Proportion of 3 or greater
       
       #Example: Coin
       coin<-c('H','T')
       sample(coin, 10, replace= T, prob=c(0.7,0.3))
       
       #Monte-Carlo simulation
       sample(coin, 10, replace= T)
       
       replicate(100, {sample(coin, 10, replace= T)})
       
       prop_head<- replicate(1000 {
         ten_toss<-sample(coin, 10, replace= T)
         mean(ten_toss=='H')
       })
       prop_head
       
       mean(prop_head)
       
       #Generating random numbers from a distribution
       #Generating 500 random number from a population with mean 150 and sd 5
       
       norm_ran<-rnorm(500, mean=150, sd=5)
       norm_ran
       
       mean(norm_ran)
       sd(norm_ran)
       
       #Checking if they are normal
       qqnorm(norm_ran)
       qqline(norm_ran)
       hist(norm_ran, 15)
       
       #Simillarly generating 10 random numbers form a binomial experiment with 20 trials and 0.7 success rate
       rbinom(n=10, size=20, prob=0.7)
       
       #Calculating probabilities for discrete distributions
       #Probility density function
       #Probability of 7 success from 20 trials with 0.3 success rate
       pbinom(7, size=20, prob=0.3)
       
       #Probability distribution function or cumulative probability
       
       #Left-tail(X<=x) or
       #Probability of more than 7 success from 20 trials with 0.3 success rate
       
       pbinom(7, size=20, prob=0.3, lower.tail= F)
       
       #Interval probability (x_1<X<=x_2)
       #Probability of winning 3 to 7 times
       
       #Method 1:
       pbinom(7, size=20, prob=0.3)-pbinom(7, size=20, prob=0.3)
       
       #Method 2:
       pbinom(c(3,7), size=20, prob=0.3)
       diff(pbinom(c(3,7), size=20, prob=0.3))
       
       #Same rull follows for all other discrete distribution
       ?dgeom
       #Prob of getting success after 5  failures where success  is 0.6 
       dgeom(5,prob=0.6)
       
       #Prob of getting success after 5 or less failures where success rate is 0.6 
       pgeom(5,prob=0.6)
       
       #Calculating probabilites for continuous distributions
       
       #Probability of 15 or less where  mean 20 and sd 2  and follows normal distribution
       pnorm(15, mean=20, sd=2)
       
       #5th Quantile value of a normal distribution with mean 50, sd 5
       qnorm(0.05, mean=50, sd=5)
       
       #Calculating some Quantiles value at a time
       q_val<-seq(0.1, 0.9, by=0.1)
       q_val
       qnorm(q_val, mean=50, sd=5)
       
       ?pchisq
       
       x<-c(11,12,53,54)
       x
       
       
       
       
       ***CLASS-11, PART-1 & 2 & 3:
         
         #Calculating central tendencies
         
         
         #mean
         heights<-c(36,43,35,45,40)
       mean(heights)
       
       library('MASS')
       Cars93
       Cars93$Horsepower
       
       #Detecting outliners 
       boxplot(Cars93$Horsepower)
       
       mean(Cars93$Horsepower)
       
       #Trim upper and lower 5%
       mean(Cars93$Horsepower, trim=0.05)
       
       #Geometric mean
       #Calculating Average annual rate of return 
       #5 year percentages : 10%, 15%, 10%, 20%, 5%
       
       invest<-c(110,115,110,120,105)
       gm.invest<-prod(invest)^(1/length(invest))
       gm.invest
       
       #Harmonic mean
       #Up trip 30 kmh, down trip 50 kmh. What is average kmh?
       speeds<-c(30,50)
       1/speeds
       mean(1/speeds)
       
       har.mean<-1/mean(1/speeds)
       har.mean
       
       #Medians
       x<-c(23,45,34,56,78,34)
       sort(x)
       median(x)
       median(Cars93$Horsepower)
       
       #Mode
       results<-c(45,56,66,78,56,45,45,56,56,78,46)
       
       #Be Aware of mode() function
       mode(results)
       
       #To calculate Mode
       #Install Modeest package and load it
       install.packages('modeest')
       library(modeest)
       
       #use 'most frequency value 'mfv() function to calculate mode
       mfv(results)
       
       
       #Deviation from mean
       #Calculating estimate of the population variance and standard deviation
       #using formula
       x<-c(4,5,7,3,7,7,3,6,7,4,7,3,5,5,6)
       sum((x-mean(x))^2)/(length(x)-1)
       sqrt(sum(x-mean(x))^2)/(length(x)-1)
       
       #Using var() and sd() function
       var(x)
       sd(x)
       
       #Calculating population variance and standard deviation
       x<-c(4,5,7,3,7,7,3,6,7,4,7,3,5,5,6)
       var(x)*(length(x)-1)/length(x)
       sd(x)*sqrt((length(x)-1)/(length(x))
                  
                  ##Converting date to standard score or Z scores
                  x
                  #Formula
                  (x-mean(x))/sd(x)
                  
                  #using scale() function
                  scale(x)
                  
                  
                  #Sorting ranking and ordering 
                  scores<-c(56,45,78,48,76,34,67,89,37,59)
                  scores
                  
                  #sorting
                  #ascending
                  sort(scores)
                  
                  #descending
                  sort(scores, decreasing= T)
                  
                  #Ranking
                  #Ascending
                  rank(scores)
                  
                  #descending
                  rank(-scores)
                  
                  #Tied data
                  scores2(56,45,78,78,48,45,76,45,34,67,89,37,59)
                  rank(scores2)
                  ?rank
                  rank(scores2, ties.method='first')
                  rank(scores2, ties.method='last')
                  rank(scores2, ties.method='max')
                  
                  #ordering
                  #ascending
                  order(scores)
                  #descending
                  order(-scores)
                  scores[order(-scores)]
                  
                  #Calculating Quantiles
                  #Ref:https://en.wikipedia.org/wiki/Quantile
                  
                  quantile(Cars93$Horsepower)
                  quantile(Cars93$Horsepower, c(0.2, 0.45, 0.80))
                  ?quantile
                  
                  #Calculating moments, skewness, kurtosis
                  #Raw moment
                  #For nth raw moment of a variable raise to power n and then average
                  hpow_usa<-Cars93$Horsepower[Cars93$Origin=='USA']
                  raw_1_mom<-mean(hpow_usa^1)
                  raw_1_mom
                  raw_2_mom<-mean(hpow_usa^2)
                  raw_2_mom
                  raw_3_mom<-mean(hpow_usa^3)
                  raw_3_mom
                  
                  #Central moment
                  #For nth central moment raise deviations from mean to nth power then average
                  cen_2_mom<-mean((hpow_usa-mean(hpow_usa))^2)
                  cen_2_mom
                  var(hpow_usa)*(length(hpow_usa)-1)/length(hpow_usa)
                  cen_3_mom<-mean((hpow_usa-mean(hpow_usa))^3)
                  cen_3_mom
                  
                  #So it is better to define a function 
                  cen.mom<-function(x,n){mean((x-mean(x))^n)}
                  cen.mom(hpow_usa,2)
                  cen.mom(hpow_usa,3)
                  
                  #Skewness from moments
                  #Third central moment divided by second central moment raised to the three-halves power
                  cen.mom(hpow_usa,3)/cen.mom(hpow_usa, 2)^1.5
                  hist(hpow_usa, 10, probability= T)
                  lines(density(hpow_usa))
                  
                  #Using moment package
                  install.packages('moments')
                  library(moments)
                  help(package="moments")
                  
                  #Skewness
                  skewness(hpow_usa)
                  
                  #Kurtosis
                  #4th central moment divided by 2nd central moment square
                  cen.mom(hpow_usa,4)/cen.mom(hpow_usa, 2)^2
                  kurtosis(hpow_usa)
                  
                  #Raw moment
                  moment(hpow_usa, order=3, central=F)
                  
                  #Central moment
                  moment(hpow_usa, order=3, central=T)
                  
                  
                  #frequency
                  ?Cars93
                  
                  ##frequency table
                  table(Cars93$Type)
                  
                  #Contingency Table
                  table(Cars93$Type, table(Cars93$Origin)
                        
                        #Proportion  Table
                        freq_table<-table(Cars93$Type)
                        prop.table(freq_table)
                        prop.table(freq_table)*100
                        
                        #Another property of hist() function
                        hist(Cars93$Price)
                        hist(Cars93$Price, plot=F)
                        hist(Cars93$Price, plot=F, breaks=5)
                        
                        #Cumulative Frequency
                        freq_vec<-c(5,8,4,5,4,6,8,9,2,1,3,4)
                        cumsum(freq_vec)
                        
                        prices<-hist(Cars93$Price, plot=F, breaks=5)
                        
                        prices$counts
                        cumsum(prices$counts)
                        
                        prices$counts<-cumsum(prices$counts)
                        plot(prices, main='Cumilative Histogram',
                             xlab='Cumilative Frequency')
                        
                        #Ploting cumilative distribution function
                        ecdf(Cars93$Price)
                        plot(ecdf(Cars93$Price))
                        
                        #Steam and leaf
                        stem(Cars93$Price)
                        
                        #summarizing data
                        #summary of numbers
                        summary(Cars93$Horsepower)
                        
                        #summary of factor
                        class(Cars93$Manufacturer)
                        Cars93$Manufacturer
                        summary(Cars93$Manufacturer)
                        
                        #summary of a data frame
                        summary(Cars93)
                        
                        #summary of list
                        lst<-list(c(2,4,5,6,3,5,7,8),c(4,3,4,5,6,3,7,9,0,6),c(7,8,3,5,7))
                        lst
                        summary(lst)
                        
                        #Better if we use lapply()
                        lapply(lst, summary)
                        
                        
                        
                        
                        
                        ***CLASS-12, PART-1 & 2 & 3:
                          
                          #One sample hypothesis testing
                          #Testing a mean
                          #For large sample case 
                          #t-test
                          #Two sided 
                          #Mean weight of a product= 400gm
                          #Quality Control Manager wants to verify if the process is under control
                          prod_sam<-(336,414,407,385,397,401,388,418,409,403,403,381,393,404,385,397)
                        length(prod_sam)
                        t.test(prod_sam, mu=400)
                        
                        #90% confidence interval
                        t.test(prod_sam, mu=400, conf.level=0.90)
                        
                        #Right tail
                        #Mean IQ=100
                        #Claim: new book will improve IQ score
                        iq_sample<-c(105,110,88,90,99,101,99,110,121,103,87,103,87,103,128,92,104,122,130,108,123,129,91,73)
                        length(iq_sample)
                        t.test(iq_sample, mu =100, alternative='greater')
                        ?t.test
                        
                        #some trickst
                        t_result<-t.test(iq_sample, mu =100, alternative='greater')
                        t_result
                        t_result$p.value
                        t_result$conf.int
                        
                        #z-test
                        install.packages('BSDA')
                        library(BSDA)
                        
                        ?z.test
                        z.test(prod_sam,mu=400, sigma.x=11)
                        
                        #small simple case
                        
                        prod_sam_small<-c(410,405,402,401,402,396,394,405,399,396)
                        length(prod_sam_small)
                        hist(prod_sam_small)
                        qqnorm(prod_sam_small)
                        qqline(prod_sam_small)
                        t.test(prod_sam_small, mu=400)
                        
                        prod_sam_small2<-c(420,455,442,401,402,376,374.405,399,396)
                        hist(prod_sam_small2)
                        qqnorm(prod_sam_small2)
                        qqline(prod_sam_small2)
                        
                        
                        #Testing a variance
                        #One sample chim squared test for variance
                        
                        install.packages('EnvStats')
                        library(EnvStats)
                        
                        #We want our products sd value less than  5 gm
                        #Was our products sd greater than 5 gm ie. var greater than 25 gm^27
                        
                        varTest(prod_sam,sigma.squared=25, alternative='greater')
                        
                        #proportion test
                        #A team 20 out of 30 games in a certain year.
                        #let's take a bet
                        # If the team wins more than 60% game in next year then you win otherwise lose
                        #will you take the bet?
                        
                        prop.test(20,30, p=0.6, alternative='greater')
                        
                        #Two sample hypothesis testing
                        #Comparing two machine performances
                        #Independent samples
                        #Time per product
                        machine1<-c(24.56,22.57,21.67,23.54,23.54,24.56,24.65)
                        machine2<-c(26.78,25.67,28.57,23.56,22.23,2.6)
                        
                        #Two sided
                        #Are machine1 avg time per  product and machine2 avg time per product equal?
                        t.test(machine1,machine2)
                        t.test(machine1,machine2, conf.level=0.9)
                        
                        #Right tail
                        #is machine1 avg time per product is greater than machine2 avg time per product?
                        t.test(machine1,machine2,
                               alternative='greater')
                        
                        #Left tail
                        #is machine1 avg time per  product is less than machine2 avg time per product?
                        t.test(machine1,machine2,
                               alternative='less')
                        
                        #If we know their variances are equal
                        t.test(machine1,machine2, var.equal=T)
                        
                        #Dependent samples or paired samples
                        
                        #10 peoples participated in a weight-loss program
                        #We will try to inference about the program's effectiveness
                        
                        #before and after weight data in pounds
                        wgt_bef<-c(198,201,210,185,204,156,167,197,220,186)
                        wgt_aft<-c(194,203,200,183,200,153,166,197,215,184)
                        
                        #Was after avg weight less than before avg weight?
                        t.test(wgt_aft, wgt_bef), paired=T, alternative='less')
                  
                  
                  
                  
                  ***CLASS-13, PART-1 & 2 & 3:
                    
                    #Two samples from two different production line
                    #We want to verify if their variances are same
                    samp1<-c(371,392,380,408,395,411,418,397,400,396,401)
                  samp2<-c(416,424,383,384,390,404,378,388,410,385,414)
                  
                  #are their variance equal?
                  var.test(samp2,samp1, ratio=1, alternative='two.sided')
                  
                  #Testing groups for equal proportions
                  
                  #Team A wins 28 out of 35 games
                  #Team B wins 26 out of 40 games
                  #Are their performance equal?
                  team_success<-c(28,26)
                  team_trials<-c(35,40)
                  prop.test(team_success, team_trials)
                  
                  #some other two sample tests
                  #Testing two samples for the same distribution
                  #kolmogorov-Smirnov test (ks test)
                  ks.test(samp1, samp2)
                  
                  #Comparing locations of two samples (comparing median location
                  wilcox.test(samp1, samp2)
                  
                  #visualizing results and some tricks
                  grouped_table<- data.frame(samp1, samp2)
                  grouped_table
                  stacked_table<- stack(grouped_table)
                  stacked_table
                  
                  boxplot(samp1, samp2)
                  boxplot(stacked_table$values~stacked_table$ind)
                  
                  #Ploting multiple histograms
                  
                  #Fixing parameters
                  low_lim<-min(c(samp1, samp2))
                  low_lim
                  up_lim<-max(c(samp1, samp2))
                  up_lim
                  seq(low_lim, up_lim, length.out=9)
                  seq(low_lim, by=11, length.out=7)
                  br_points<- pretty(low_lim:up_lim, n=9)
                  br_points
                  
                  #drawing seperate histograms
                  hist(samp1, breaks=br_points)
                  hist(samp2, breaks=br_points)
                  
                  #Sorting histogram data to an object
                  hist1<-hist(samp1, breaks= br_points, plot=F)
                  hist2<-hist(samp2, breaks= br_points, plot=F)
                  
                  #Manupilating the objects to draw density plots
                  hist1
                  hist1$counts<- hist1$density
                  hist2$counts<- hist2$density
                  
                  #Ploting multiple histograms in a single graph
                  plot(hist1, col='lightgrey', main='Histogram', ylab='Density')
                  plot(hist2, col='darkgrey', add=T)
                  
                  #Correcting color opacity
                  col1<- rgb(0.5,0.8,0.7, alpha=0.6)
                  col2<- rgb(0.9,0.3,0.6, alpha=0.2)
                  plot(hist1, col=col1, main='Histogram', ylab='Density')
                  plot=(hist2, col=col2, add=T)
                  
                  #adding density lines
                  lines(density(samp1))
                  lines(density(samp2))
                  
                  #More than two samples
                  #pair wise tests
                  #two more samples from two different production line
                  samp3<-c(414,418,411,390,421,390,421,404,413,390,420,382)
                  samp4<-c(430,433,424,434,424,417,419,439,425,432,429,435) 
                  
                  grouped_table2<-data.frame(samp1,samp2,samp3,samp4)
                  stacked_table2<-stack(grouped_table2)
                  stacked_table2
                  
                  pairwise.t.test(stacked_table2$values, stacked_table2$ind)
                  
                  #One way ANOVA
                  #Ho: All production lines produce same products
                  #Ha:The products are not same
                  aov(stacked_table2$values~stacked_table$ind)
                  
                  anova_result<- aov(stacked_table2$values~stacked_table2$ind)
                  summary(anova_result)
                  
                  #All pair-wise Comparison
                  TukeyHSD(anova_result)
                  
                  #Visualizing results
                  tukey_res<-TukeyHSD(anova_result)
                  plot(tukey_res)
                  plot(TukeyHSD(anova_result), las=1)
                  
                  par(mar=c(4,7,4,4))
                  plot(TukeyHSD(anova_result), las=1, mar=c(10,10,10,10))
                  ?plot
                  
                  #Kruskal wallis one way anova 
                  kruskal.test(stacked_table2$values~stacked_table2$ind)
                  
                  
                  
                  
                  ***CLASS-14, PART-1 & 2 & 3:
                    
                    #Two way Anova
                    #Two methods:Online, F2F
                    #Two Styles: Recorder, live
                    
                    recorded<-c(57,56,60,64,33,25,28,31)
                  live<-c(22,21,29,25,66,65,71,72)
                  
                  score<-c(recorded, live)
                  
                  Method<-c(rep('online', 4), rep('F2F', 4))
                  Method
                  style<-c(rep('recorded','live'), each=8))
       style
       
       class_frame<-data.frame(style=style, Method=Method, score=score)
       class_frame
       
       #what is the effect of style and method interaction
       #Ho: No effect
       #Ha: Singnificant effect
       
       two_anova<-aov(Score~Method*Style, data= class_frame)
       two_anova
       summary(two_anova)
       
       #Understand the result
       up_frame<-cbind(class_frame, Mixed=paste(class_frame$Style, class_frame$Method))
       up_frame
       
       tapply(up_frame$Score, up_frame$Method, mean)
       tapply(up_frame$Score, up_frame$Style, mean)
       tapply(up_frame$Score, up_frame$Mixed, mean)
       
       barplot(up_frame$Score,up_frame$Mixed, mean)
       interaction.plot(up_frame$Style, up_frame$Method, up_frame$Score)
       
       
       #Linear Regression
       iris
       setosa<-subset(iris,select=1:4, subset=(iris$Species=='setosa'))
       setosa
       
       #simple linear regression
       #lm(y-x)
       #x=predictor variable/independent variable
       #y=response variable/dependent variable
       #y=b0+b1*x
       
       lm(setosa$Sepal.Length~setosa$Petal.Length)
       m1<-lm(Sepal.Length~Petal.Length, data=setosa)
       m1
       plot(setosa$Petal.Length, setosa$Sepal.Length)
       abline(m1)
       
       #Multiple linear regression
       #lm(y~x1+x2+x3.....)
       #x1,x2,x3......=predictor variables
       #y=b0+ b1*x1 + b2*x2 + b3*x3
       
       m2<-1m(Sepal.Length~Petal.Length + Petal.width, data=setosa)
       m2
       
       m3<-1m(Sepal.Length~Petal.Length + Petal.width + Sepal.width, data=setosa)
       m3
       
       #visualizing 3D model
       install.packages('car')
       install.packages('rgl')
       library(car)
       library(rgl)
       scatter3d(Sepal.Length~Petal.Length + Petal.width, data=setosa)
       ?scatter3d
       
       #Some more
       #y=b0+ b1*x1 + b2*x2 + b3*(x1*x2)
       
       lm(Sepal.Length~Petal.Length * Petal.width, data=setosa)
       
       #Retriving information from linear model, lm(), function
       #call by name
       
       m2$coefficients
       m2$residuals
       
       #m$
       #call by functions
       coefficients(m2)
       confint(m2)
       fitted(m2)
       residuals(m2)
       
       
       #Do the slope and the intercept has enough significance?
       #Can i say there is truly a linear  relationship?
       #Ho: there is a no linear relation 
       #Ha:there is a no linear relation 
       #is the model helpful?
       
       summary(m1)
       summary(m2)
       summary(m3)
       
       #comparing models
       #is model 2 significantly different from model 1?
       #Ho:the two model are not significantly different
       #Ha:the two model are  significantly different
       
       anova(m1,m2)
       
       #Is model 3 significantly different  from model 2?
       anova(m2,m3)
       
       #A good model might be
       m4<-1m(Sepal.Length~Sepal.Width, data=setosa)
       summary(m4)
       anova(m3,m4)
       plot(setosa$Sepal.Width~setosa$Sepal.Length,
            xlab='Sepal Width'
            ylab='Sepal Length')
       abline(m4)
       
       #Making predictions
       #What will be the predicted sepal length if sepal width is 2.7
       predict(m4, data.frame(Sepal.Width=2.7))
       
       #What will be the sepal length if(Petal Length, Petal Width, Sepal width)
       predict(m3, data.frame(Petal.Length=1.5, Petal.Width=0.3, Sepal.Width=3.4))
       
       #Want more?
       
       Petal.Length<-c(1.5,1.7,1.9,1.6,1.5)
       Petal.Width<-c(0.1,0.1,0.3,0.2,0.3)
       Sepal.Width<-c(3.0,3.5,3.4,3.2,3.4)
       our_data<-data.frame(Petal.Length, Petal.Width, Sepal.Width)
       our_data
       predict(m3, our_data)
       
       predict(m3, interval='confidence')
       predict(m3, interval='prediction')
       
       #Some tricks
       x<-c(200,250,300,350,400,450,500,550,600,650,700,750,800)
       y<-c(1.3,1.5,1.7,1.9,2.0,2.2,2.3,2.6,2.8,3.1,3.5,3.7,4.2)
       plot(x,y,xlim=c(0,900), ylim=c(0,5))
       abline(lm(y~x))
       abline(lm(y~x+0))
       
       
       
       
       
       ***CLASS-15, PART-1 & 2:
         
         #Curvilinear Regression
         #Transforming and making linear
         
         x<-2:30
       y<-c(2.3,4.6,5.9,6.1,6.9,7.2,7.6,8.8,9.5)
       
       plot(x,y)
       m1<-lm(y~x)
       abline(m1)
       
       #May be log transformation  will make the data linear
       z<-log(x)
       plot(z,y, xlab='Log(x)')
       m2<-1m(y~z)
       abline(m2)
       m2
       
       #If  i donot want transformation
       plot(x,y)
       m3<-lm(y~I(log(x)))
       points(x, m3$fitted.values, type='l')
       m3
       
       #Power transformation
       x<-1:10
       y<-c(17,44,119,179,434,614,1019,1514,2234,3164)
       plot(x,y)
       plot(x^2,y)
       plot(x^3,y)
       z<-x^3
       m4<-lm(y~z)
       abline(m4)
       m4
       
       #Finding best power transformation easily
       #Note : this will finf y^(lambda)=x relation
       
       library('MASS')
       plot(x,y)
       m5<-lm(y~x)
       bc<-boxcox(m5)
       lambda<-bc$x[which, max(bc$y)]
       lambda
       
       z<-y^lambda
       plot(x,z)
       m6<-lm(z~x)
       abline(m6)
       
       #Polynomial regression
       x<- -10:10
       y<-15+ 9*x^2 +4*x^3
       
       x
       y
       plot(x,y)
       m7<-lm(y~x + I(x^2))
       points(x, m7$fitted.values, type='l')
       
       m8<-lm(y~x+I(x^2)+I(x^3))
       plot(x,y)
       points(x, m8$fitted.values, type='l')
       m8
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       