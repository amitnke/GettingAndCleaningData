##Common Varibale to create
        # Missingness indicator
        # Cutting up quantitative variables
        # Applying transforms

#Creating sequencing
s1 <- seq(1,10, by = 2)
s2 <- seq(1,10, length=3)
x <- c(1,3, 8, 25, 100)
seq(along = x)

#Subsetting variables
restData$nearMe = restData$neighborhood %in% c("Roland Park", "Homeland")
table(restData$nearMe)
restData[restData$nearMe,]
#Creating binary variables
restData$zipWrong = ifelse(restData$zipCode < 0, TRUE, FALSE)
table(restData$zipWrong, restData$zipCode < 0)
#Create categorical variables
restData$zipGroups = cut(restData$zipCode, breaks = quantile(restData$zipCode))
table(restData$zipGroups)
table(restData$zipGroups, restData$zipCode)
##Easier cutting
library(Hmisc)
restData$zipGroups = cut2(restData$zipCode, g=4)
table(restData$zipGroups)
#Create a factor variable
restData$zcf <- factor(restData$zipCode)
restData$zcf[1:10]
class(restData$zcf)
#Levels of factor varaibles
yesno <- sample(c("yes", "no"), size = 10, replace = TRUE)
yesnofac <- factor(yesno, levels = c("yes", "no"))
relevel(yesnofac, ref = "yes")
as.numeric(yesnofac)
library(Hmisc);library(plyr)
restData2 = mutate(restData, zipGroups = cut2(zipCode, g = 4))
table(restData2$zipGroups)
