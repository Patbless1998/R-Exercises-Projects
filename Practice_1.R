allom <- read.csv("Allometry.csv")
head(allom)
allom$species <- as.factor(allom$species)
str(allom)
levels(allom$species)
table(allom$species)
allom$species <- factor(allom$species, levels = c("PSME", "PIMO", "PIPO"))
table(allom$species)
allomsamll <- read.csv("Allometry.csv", skip = 5, nrows = 5, header = FALSE)
allomsamll
allom["diameter"]
allom$treeSizeClass <- factor(ifelse(allom$diameter < 20, "small", "large"))
table(allom$treeSizeClass)
round(allom$diameter, 1)
allom$diameterInch <- allom$diameter/2.54
allom$allomvolindex <- with(allom, diameter^2 * height)
allom$heightoverdiameter <- with(allom, height/diameter)
summary(allom)
nrow(allom)
names(allom)
names(allom)[7] <- "allom_volume_index"
allom[4, 2]
allom[1:3, "height"]
allom[1:10,]
allom[,4]
allomhd <- allom[c("height", "diameter")]
allomhd
allom$diameter[allom$diameter > 60]
allom[allom$diameter > 60,]
allom[sample(1:nrow(allom), 10), "leafarea"]
allom[allom$species %in% c("PIMO", "PIPO"),]
allom$diameter[allom$species == "PIMO" & allom$diameter>50]
data()
data1 <- iris
head(data1)
subset(data1, Species == "setosa" & Petal.Length == 1.4)
subset(data1, Sepal.Length > 4, c("Sepal.Length", "Species"))
levels(iris$Species)
irissub <- subset(data1, Species %in% c("versiclor", "virginica"), select = c("Sepal.Length", "Species"))
irissub
subset(irissub, select = -Sepal.Length)
dfr <-data.frame(a=-5:0, b=10:15)
dfr[,"a"]
subset(dfr, select = a)
dfr <- data.frame(x=1:3, y=2:4)
dfr
write.csv(dfr,"somedata.csv", row.names=FALSE)
dfr
value1 <- any(c(TRUE, FALSE,
      FALSE, FALSE))
value1
value2 <- any(letters == "?")
value2
duplicated(c(1,1,2,3,4,4))
order(mtcars$wt)
mtcars
students <- data.frame(
  name = c("Alice", "Bob", "Clara", "David"),
  score = c(88, 95, 72, 90)
)

# Rank by score (highest first)
students[order(students$score, decreasing = TRUE), ]

sales <- data.frame(
  month = c("Jan", "Feb", "Mar", "Apr"),
  revenue = c(2000, 4500, 3000, 5000)
)
sales[order(sales$revenue, decreasing = TRUE),]

customers <- data.frame(
  customer = c("A", "B", "C", "D", "E"),
  total_spent = c(1000, 5000, 3000, 4500, 2000)
)

top5 <- customers[order(customers$total_spent, decreasing = TRUE), ]
top5

library(ggplot2)

df <- data.frame(category = c("X", "Y", "Z"), value = c(30, 50, 40))
df$category <- factor(df$category, levels = df$category[order(df$value)])

ggplot(df, aes(x = category, y = value)) + 
  geom_bar(stat = "identity")

with(mtcars, mpg/wt)
mtcars
21/2.620
rm(list = ls())
allom$treeSize <- cut(allom$diameter, breaks = c(0, 25, 50, 75), labels = c("small", "medium", "large"))
table(allom$treeSize)
str(allom)
summary(allom)
sum(is.na(allom))
