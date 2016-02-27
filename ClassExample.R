setwd("/Users/amitkumar/R/GettingAndCleaningData")
if(!file.exists("data")){dir.create("data")}
fileUrl <-  "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xlsx?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./data/cameras.xlsx", method = "curl")
dataDownloaded <- date()
#################
library(xlsx)
cameraData <- read.xlsx("./data/cameras.xlsx", sheetIndex = 1, header = TRUE)
colIndex <- 2:3
rowIndex <- 1:4
cameraData <- read.xlsx("./data/cameras.xlsx", sheetIndex = 1, 
                        colIndex = colIndex, rowIndex = rowIndex)







