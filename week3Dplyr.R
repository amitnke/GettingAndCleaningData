#Select, Filter, arrange, rename, mutate, summarise
#The result is always a dataframe. The first argument is always a dataframe. 
library(dplyr)
chicago <- readRDS("chicago.rds")
dim(chicago)
str(chicago)
names(chicago)
#Select all columns from city to dptp
head(select(chicago, city:dptp))
head(select(chicago, -(city:dptp)))
#Alternative without dplyr package
i <- match("city", names(chicago))
j <- match("dptp", names(chicago))
head(chicago[,-(i:j)])
chic.f <- filter(chicago, pm25tmean2 > 30)
head(chic.f)
chic.f <- filter(chicago, pm25tmean2 > 30 & tmpd > 80)
head(chic.f, n =10)
chicago <- arrange(chicago, date)
head(chicago, n =10)
chicago <- arrange(chicago, desc(date))
head(chicago, n =10)
tail(chicago)
chicago <- rename(chicago, pm25 = pm25tmean2, dewpoint = dptp)
chicago <- mutate(chicago, p25detrend = pm25-mean(pm25, na.rm = TRUE))
head(select(chicago, pm25, p25detrend))
chicago <- mutate(chicago, tempcat = factor(1*(tmpd > 80), labels=c("cold", "hot")))

hotcold <- group_by(chicago, tempcat)
hotcold
summarise(hotcold, pm25 = mean(pm25), o3 = max(o3tmean2), no2 = median(no2tmean2))
summarise(hotcold, pm25 = mean(pm25, na.rm = TRUE), o3 = max(o3tmean2), no2 = median(no2tmean2))
chicago <- mutate(chicago, year = as.POSIXlt(date)$year + 1900)
years <- group_by(chicago, year)
summarise(years, pm25 = mean(pm25, na.rm = TRUE), o3 = max(o3tmean2), no2 = median(no2tmean2))

chicago %>% mutate(month = as.POSIXlt(date)$mon + 1) %>% group_by(month) %>% summarise(pm25 = mean(pm25, na.rm = TRUE), o3 = max(o3tmean2), no2 = median(no2tmean2))
