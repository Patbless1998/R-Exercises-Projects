library(lubridate)
hydro <- read.csv("hydro.csv")
head(hydro)
hydro$Date <- as.Date(ymd(hydro$Date))
head(hydro)
any(is.na(hydro$Date))
min(hydro$Date)
max(hydro$Date)
max(hydro$Date) - min(hydro$Date)
with(hydro, plot(Date, storage, type = "l"))
ymd_hms("2012-9-16 13:05:00")
now() + hours(3) + minutes(15)
start_time <- as.POSIXct("2012-09-16 7:20:00")
finish_time <- start_time + (2*3600) + (11*60) + 50
finish_time
race_day <- weekdays(start_time)
race_day
