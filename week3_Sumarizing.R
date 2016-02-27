if(!file.exists("./data")){dir.create("./data")}
fileURL <- "https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
download.file(fileURL, destfile="./data/restaurant.csv", method = "curl")
restData <- read.csv(("./data/restaurant.csv"))
###Looking on the dataset
head(restData, n=3)
tail(restData, n=3)
summary(restData)
str(restData)
quantile(restData$councilDistrict, na.rm = TRUE)
table(restData$zipCode, useNA = "ifany")
table(restData$councilDistrict, restData$zipCode)
#check for missing value
sum(is.na(restData$councilDistrict))
any(is.na(restData$councilDistrict))
all(restData$zipCode > 0)
#Row and column sums
colSums(is.na(restData))
all(colSums(is.na(restData))==0)
#Value with specified characteristics
table(restData$zipCode %in% c("21212"))
table(restData$zipCode %in% c("21212", "21213"))
#Value with specified characteristics
restData[restData$zipCode %in% c("21212", "21213"),]
#Crosstabs
data("UCBAdmissions")
DF = as.data.frame(UCBAdmissions)
summary(DF)

xt <- xtabs(Freq ~ Gender + Admit, data = DF)
#Flat Tables
warpbreaks$replicate <- rep(1:9, len = 54)
xt <- xtabs(breaks ~ ., data = warpbreaks)

#Flat tables
ftable(xt)
#Size of the datasets
fakeData = rnorm(1e5)
object.size(fakeData)
print(object.size(fakeData), units = "Mb")
