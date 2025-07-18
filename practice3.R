library(readr)
head(titanic_data)
summary(titanic_data)
sum(is.na(titanic_data))
#which(is.na(titanic_data))
#View(titanic_data)
titanic_sub1 <- subset(titanic_data, !is.na(Age))
summary(titanic_sub1)
sum(is.na(titanic_sub1))
titanic_sub2 <- subset(titanic_data, !is.na(Age) & !is.na(Name))
sum(is.na(titanic_sub2))
titatic_nona <- titanic_data[complete.cases(titanic_data),]
sum(is.na(titatic_nona))
View(titatic_nona)
dfr <- data.frame(a = 1:4, b = c(NA, 4, NA, 6))
subset(dfr, b>4, select = b)
dfr[dfr$b > 4, "b"]
substr(c("good","good riddance","good on ya"),1,4)
txt <- c("banana", "mango", "pineaple")
paste(txt, "fruit")
paste(txt, collapse = "-")
