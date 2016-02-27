url <- "http://scholar.google.com/citations?user=HI-I6C0AAAAJ&hl=en"
con = url(url)
htmlCode <- readLines(con)
close(con)
library(XML)
html <- htmlTreeParse(url, useInternalNodes = T)
xpathSApply(html, "//title", xmlValue)
#extract page title and number of citations
xpathSApply(html, "//td [@class='gsc_a_c']",xmlValue )# number of citations
xpathSApply(html, "//a [@class='gsc_a_c']", xmlValue)
#additional feature
xpathSApply(html, "//td [@class='gsc_a_t']", xmlValue)  # article / paper title
xpathSApply(html, "//td [@class='gsc_a_y']", xmlValue)  # publication year

######httr package####
#install.packages("httr")
library(httr)
html2 <- GET(url)
content2 <- content(html2, as="text")
parsedHtml <- htmlParse(content2, asText = TRUE)
xpathSApply(parsedHtml, "//title", xmlValue)
###
pg1 = GET("http://httpbin.org/basic-auth/user/passwd")
pg2 = GET("http://httpbin.org/basic-auth/user/passwd", 
          authenticate("user", "passwd"))

#######Handle
google = handle("http://google.com")
pg1 <- GET(handle = google, path="/")
pg2 <- GET(handle = google, path="search")
