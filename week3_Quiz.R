#------1 ----
url1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(url1, destfile = "./data/housing.csv", method = "curl")
housing <- read.csv("./data/housing.csv")
#Create a logical vector that identifies the households on greater than 10 
#acres who sold more than $10,000 worth of agriculture products. 
#Assign that logical vector to the variable agricultureLogical. 
#Apply the which() function like this to identify the rows of the data 
#frame where the logical vector is TRUE.
housing$ACR %in% 3 & housing$AGS %in% 6
#which(agricultureLogical)
which(housing$ACR %in% 3 & housing$AGS %in% 6)
#What are the first 3 values that result?
head(which(housing$ACR %in% 3 & housing$AGS %in% 6), head(3))
#-------2------
library(jpeg)
url1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
download.file(url1, destfile = "./data/quiz2.jpeg",mode = 'wb', method = "curl")
list.files("./data/")
data2 = readJPEG("./data/quiz2.jpeg", native = TRUE)
quantile(data2, probs = c(0.3, 0.8))
#--------3-----------
url1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(url1, destfile = "./data/product.csv", method = "curl")
url1 <- "https://d396quszanm40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(url1, destfile = "./data/education.csv", method = "curl")
#gdp <- read.csv("./data/product.csv", skip = 4)
gdp <- read.csv('./data/product.csv', header=F, skip=5, nrows=190)
education <- read.csv("./data/education.csv")
combined <- merge(gdp, education, by.x='V1', by.y='CountryCode', sort=TRUE)
arrange(combined, desc(RANK))
combined[with(combined, order(-V2) )]

names(gdp)
names(gdp2)
