library(lubridate)
as.Date("2011-5-12") + 7
as.Date("2009-7-1") - as.Date("2008-12-1")
difftime(as.Date("2009-7-1"), as.Date("2008-12-1"), units = "weeks")
as.Date("2013-8-18") + years(10) + months(1)
as.Date("2011-03-01") - 1
as.Date("2012-03-01") - 1
as.Date(dmy("31/12/1991"))
as.Date(ISOdate(2012,12,2))
today()
today() - as.Date(ISOdate(1998,7, 25))
