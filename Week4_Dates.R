d1 <- date()
d1
d2 <- Sys.Date()
d2
class(d2)
##Formatting dates
#       %d = date, %a = abbreviated weekday, %A = unabbreviated weekday, %m = month, %b = abbreviated month, %B = unabbreviated month
#       %y = 2 digit year, %Y = four digit year
format(d2, "%A %m %d")

x = c("1jan1960", "2jan1960", "31mar1960", "30jul1960")
z <- as.Date(x, "%d%b%Y")
z
z[1] - z[2]
as.numeric(z[1] - z[2])
##Converting to Julian
weekdays(d2)
months(d2)
julian(d2)
##Lubridate
library(lubridate)
ymd(Sys.Date())
mdy("08/04/2014")
dmy("03-04-2014")
##Delaing with time
ymd_hms("2011-09-03 10:10:03")
ymd_hms("2011-0803 10:15:03", tz = "Pacific/Auckland")
?Sys.timezone

x <- dmy(c("01jan2013","2jan2014"))
wday(x[1])
