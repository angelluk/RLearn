# R basics

R.version  # current version of R

install.packages('RMySQL')   # inslall support MySQL
install.packages('DMwR')     # install examples of book Data Mining wiyh R

installed.packages()    # show installed packages

library()        # installed packages in R framework

old.packages()   # packages need to be uptaded

update.packages()  # update all installed packages

help(plot)    # help of function

ls() # list of all objects

rm(USO,SPY)  # remove objects


v <- c(1,2,3.4,789)    # create vector

x <- vector()   # create empty vector 

length(v)   # size of object 

mode(v)   # type of object

x <- sqrt(v)   # sqrt of each element of vector

v + x   # add vectors

g <- c("f","m","f","f","m","f")   # vector

fg <- factor(g)        # factor of vector

table(g)    # table  of vector

                                          ### sequences

x<- 1:100   # integer sequences

x<- 100:1  # integer inverse sequences

seq(-4,1,0.5)   # real sequences

seq(from= 1, to = 5 , length = 7)  # real sequences with setup length

rep(5,10)    # repeat 5 by 10 times

rep("Hi", 3)     # repeat string

gl(2,4, labels = c("female","male"))   # repeat factor  

                                       ### generate random

rnorm(10)    # 10 random of normal distribution

rnorm(4, sd= 2, mean = 5)  # 4 random of normal distribution with sd=2 and mean =5

rt(5, df=10) # 5 random of Student distribution with df=10

                          
                                      ### sub setting
x<-c(0,-3,4,-1,45,90,-5)
x>0               # logical for each element
y<- x[x>0]        # subset - only positive numbers
x[x<= -2 | x>5]   # more complex subset
x[c(4,6)]         # particular numbers
x[1:3]            # range of index
x[-1]             # exclude first element
x[-(1:3)]         # exclude range 
x[] <- 0          # zero of each element

                                      ### matrices  and  arrays 

m <- c(45,23,66,77,33,44,56,12,78,23)  # initial vector
dim(m) <- c(2,5)                       # transform vector to matric by column
m <- matrix(c(45,23,66,77,33,44,56,12,78,23),2,5,byrow = T)  # another aproach to create matric by row
m[1,]                                  # first row result is vector
m[1,, drop = F]                        # first row result is matric
cbind(c(4,76),m[,4])                   # bind by column
rbind(c(1,2,3,4,5),m[1,])              # bind by row
colnames(m) = c ("first","second","third","four","five")  # set the column names
rownames(m) = c ("stock 1","market")   # set the row names
m["market", "first"]                   # using names

a <- array(1:24, dim = c(4,3,2))       # create 3 dimensional array
a[1,3,2]                               # access

                                      ### list

my.lst <- list(stud.id=34453,stud.name="John",stud.marks=c(14.3,12,15,19))   # create list
my.lst[[1]]              # exstract value by index
my.lst$stud.name         # extract by name
my.lst$parents.names <- c("Anna","Mike")  # ad extended field to list
unlist(my.lst)           # unlist list - make simple vector from list

                                      ### data frame

my.dataset <- data.frame(site=c('A','B','A','A','B'), season = c('Winter','Summer','Summer','Spring','Fall'),pH=c(7.4,6.3,8.6,7.2,8.9))
my.dataset[3,2]   # access to element
my.dataset$pH     # access by name
my.dataset[my.dataset$pH>8,]  # filter on dataframe
subset(my.dataset, pH>8)      # another filter
my.dataset$NO3 <- c(234,256,654.1,356,776)  # add column
nrow(my.dataset)    # number of rows
ncol(my.dataset)    # number of cols
my.dataset <- edit(my.dataset)   # edit dataframe in table
data()     # available  datasets

