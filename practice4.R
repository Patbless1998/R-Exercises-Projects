cereal_data <- read.csv("cereal.csv")
head(cereal_data)
str(cereal_data)
cereal_data$Cereal.Name<- as.character(cereal_data$Cereal.Name)
str(cereal_data)
is.character(cereal_data$Cereal.Name)
cerealNames <- cereal_data$Cereal.Name
head(cerealNames)
grep("Raisin", cerealNames)
grepl("Raisin", cerealNames)
cerealNames[grep("Raisin", cerealNames)]
grep("^Raisin", cerealNames)
grep("Bran$", cerealNames)
grep("bran", cerealNames, ignore.case = TRUE)
cereal_data$BranOrNot <- grepl("Bran", cerealNames)
summary(cereal_data$BranOrNot)
