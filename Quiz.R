fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
if(!file.exists("data")){dir.create("data")}
download.file(fileUrl, destfile = "./data/cameras.csv", method = "curl")
dataDownloaded <- date()
RT <- read.csv("./data/cameras.csv")
RT1 <- RT[!is.na(RT$VAL),]
nrow(RT1[RT1$VAL > 23, ])

fileURL = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
library(xlsx)
download.file(fileURL, destfile = "./data/NaturalGasAquisition.xlsx", method = "curl")
dataDownloaded <- date()
nga <- read.xlsx("./data/NaturalGasAquisition.xlsx", sheetIndex = 1, header = TRUE)
colIndex <- 7:15
rowIndex <- 18:23
dat <- read.xlsx("./data/NaturalGasAquisition.xlsx", sheetIndex = 1, 
                        colIndex = colIndex, rowIndex = rowIndex)
                        
library(XML)                
library(RCurl)
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
xData <- getURL(fileURL)
doc <- xmlParse(xData)
rootNode <- xmlRoot(doc)
xmlName(rootNode)

a <- xpathSApply(rootNode, "//zipcode", xmlValue)
sum(a == 21231)

fileurl = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
DT <- fread(fileurl)
