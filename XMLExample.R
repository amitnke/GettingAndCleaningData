setwd("/Users/amitkumar/R/GettingAndCleaningData")
fileUrl <- "http://www.w3schools.com/xml/simple.xml"
library(XML)
doc <- xmlTreeParse(fileUrl, useInternal = TRUE)
rootNode <- xmlRoot(doc)
rxmlName(rootNode)
names(rootNode)

rootNode[[1]]
rootNode[[1]][[2]]

xmlSApply(rootNode, xmlValue)
xpathSApply(rootNode, "//name", xmlValue)
xpathSApply(rootNode, "//price", xmlValue)

fileUrl <- "http://espn.go.com/nfl/team/_/name/bal/baltimore-ravens"
doc <- htmlTreeParse(fileUrl, useInternal=TRUE)
scores <- xpathSApply(doc, "//li[@class='score']", xmlValue)
teams <- xpathSApply(doc, "//li[@class='team-name']", xmlValue)





