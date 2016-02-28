#1

url1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(url1 , destfile="./data/housing.csv", method = "curl")
housing <- read.csv(("./data/housing.csv"))
a <- strsplit(names(housing), "wgtp")
a[[123]]
#2
url2 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(url2, destfile = "./data/gdp.csv", method = "curl")
gdp <- read.csv("./data/gdp.csv", skip = 5, header = FALSE, nrows = 190)
gdp$V5 <- as.numeric(gsub(",","",gdp$V5))
mean(gdp$V5)
#3
names(gdp) <- c("countryCode", "sequence", "", "countryNames","gdpinM")
length(grep("^United", gdp$countryNames))
#4
url3 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(url3 , destfile="./data/gdp2.csv", method = "curl")
url4 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(url4 , destfile="./data/edu.csv", method = "curl")
gdp2 <- read.csv("./data/gdp2.csv", skip = 5, header= FALSE, nrows = 190)
education <- read.csv("./data/edu.csv")
names(gdp2) <- c("CountryCode", "Ranking","", "countryNames","gdpInM")
gdp <- gdp2[,c(1,2,4,5)]
gdp$gdpInM <- as.numeric(gsub(",","",gdp$gdpInM))
mergedData <- merge(gdp, education, by.x="CountryCode", by.y = "CountryCode")
head(mergedData,1)
fyJune <- grep("^Fiscal year end: June", mergedData$Special.Notes)
length(fyJune)
#5

library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn)
year2012 <- grepl('2012-*', sampleTimes)
sampleTimes2012 <- subset(sampleTimes, year2012)
day <- format(sampleTimes2012, '%A')
table(day)
table(year2012)
