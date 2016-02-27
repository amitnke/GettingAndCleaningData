library(httr)
oauth_endpoints("github")
> myapp <- oauth_app("github",
                     +                    key = "0aa76bbec365f317ceb1",
                     +                    secret = "1f3212914fd104f296a47e16c1009264fa45c566")
> github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
gtoken <- config(token = github_token)
<- oauth2.0_token(oauth_endpoints("github"), myapp)


gtoken <- config(token = "de8a5dd3682f8023f70b2f16ffa5c3be14238705")
req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
req <- with_config(gtoken, GET("https://api.github.com/users/jtleek/repos"))
stop_for_status(req)
url <- "http://biostat.jhsph.edu/~jleek/contact.html"
url <- url(url)
htmlCode <- readLines(url)
close(url)
c(nchar(htmlCode[10]), nchar(htmlCode[20]), nchar(htmlCode[30]), nchar(htmlCode[100]))


url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"
a <- readLines(url, n=10)
w <- c(1, 9, 5, 4, 1, 3, 5, 4, 1, 3, 5, 4, 1, 3, 5, 4, 1, 3)
colNames <- c("filler", "week", "filler", "sstNino12", "filler", "sstaNino12", "filler", "sstNino3", "filler", "sstaNino3", "filler", "sstNino34", "filler", "sstaNino34", "filler", "sstNino4", "filler", "sstaNino4")
d <- read.fwf(url, w, header=FALSE, skip=4, col.names=colNames)
e <- d[, grep("^[^filler]", names(d))]
sum([, 4])
