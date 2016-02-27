#Goal of Tidy data
        #Each Variable forms a column
        #Each observation form a row
        #Each tavle/file stores data about one kind of observation.
library(reshape2)
head(mtcars)
mtcars$carname <- rownames(mtcars)
carMelt <- melt(mtcars, id=c("carname", "gear", "cyl"), measure.vars=c("mpg", "hp"))
head(carMelt, n = 3)
tail(carMelt, n = 3)
#Casting data frames
cylData <- dcast(carMelt, cyl ~ variable)
cylData
cylData <- dcast(carMelt, cyl ~ variable, mean)
cylData
#Averaging values
head(InsectSprays)
tapply(InsectSprays$count, InsectSprays$spray, sum)
spIns = split(InsectSprays$count, InsectSprays$spray)
spIns
sprCount = lapply(spIns, sum)
sprCount
unlist(sprCount)
#another way
sapply(spIns, sum)

#Anotherway
library(plyr)
ddply(InsectSprays, .(spray), summarise, sum=sum(count))
#Create a new variable
spraySums <- ddply(InsectSprays, .(spray), summarise, sum=ave(count, FUN=sum))
dim(spraySums)
head(spraySums)
