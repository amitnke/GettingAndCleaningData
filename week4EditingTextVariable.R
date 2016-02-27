if(!file.exists("./data")){dir.create("./data")}
fileURL <- "https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
download.file(fileURL, destfile="./data/restaurant.csv", method = "curl")
restData <- read.csv(("./data/restaurant.csv"))
names(restData)
names(restData) <- tolower(names(restData))
names(restData)
##Fixing character vector - strsplit()
splitNames = strsplit(names(restData), "\\.")
splitNames[[5]]
splitNames[[6]]
#Quick aside - lists
myList <- list(letters = c("A", "b", "c"), numbers = 1:3, matrix(1:5, ncol=5))
head(myList)
myList[1]
myList$letters
myList[[1]]
###Fixing character vectors - sapply()
splitNames[[6]][1]
firstElement <- function(x){x[1]}
names(restData) <- sapply(splitNames, firstElement)
head(restData)
#########################################
###Peer review data
fileUrl1 <- "https://dl.dropboxusercontent.com/u/7710864/data/reviews-apr29.csv"
fileUrl2 <- "https://dl.dropboxusercontent.com/u/7710864/data/solutions-apr29.csv"
download.file(fileUrl1, destfile="./data/reviews.csv", method = "curl")
download.file(fileUrl2, destfile="./data/solutions.csv", method = "curl")
reviews <- read.csv("./data/reviews.csv");solutions <- read.csv("./data/solutions.csv")
head(solutions, 2)
head(reviews, 2)
##Fixing character vector- sub()
names(reviews)
names(reviews) <- sub("_","", names(reviews))
names(solutions) <- sub("_","", names(solutions))
#Fixing character vectors - gsub()
testName <- "this_is_a_test"
sub("_","", testName)
gsub("_","", testName)
##Searching - grep(), grepl()
grep("SOUTHEASTERN", restData$policedistrict)
table(grepl("SOUTHEASTERN", restData$policedistrict))
restData2 <- restData[!grepl("SOUTHEASTERN", restData$policedistrict),]
#More on grep
grep("SOUTHEASTERN", restData$policedistrict, value = TRUE)
grep("Fells", restData$policedistrict)
length(grep("Fells", restData$policedistrict))
###More Useful String functions
library(stringr)
nchar("Jeffrey Leek")
substr("Jeffrey Leek", 1,7)
paste("Jeffrey", "Leek")
paste("Jeffrey", "Leek", sep = ",")
paste0("Amit", "Kumar")
str_trim("Amit      ")
