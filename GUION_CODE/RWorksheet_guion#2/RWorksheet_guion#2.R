1.
a. 
vec <- -5:5
print(vec)

b. 
x <- 1:7
print(x)  

2. 
a. 
vec2 <- seq(1,3, by=0.2)
print(vec2)  

3. 
ages <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
          22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
          24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
          18)
a.
third <- ages[3]
print(third)

b.
secondAndFourth <- ages[c(2,4)]
print(secondAndFourth)
 
c.
but <- ages[-c(4,12)]
print(but)

4.
b.
x <-c("first"=3, "second"=0, "third"=9)
a. 
names(x)
x[c("first", "third")]

5. 
b. 
x <- -3:2
a. 
x[2] <- 0
print(x)


6. 
a.
cruz <- data.frame(
  Month = c("Price per liter(PhP)", "Purchase-quantity(Liters)"),
  Jan = c(format(52.50, nsmall = 2), 25),                   
  Feb = c(format(57.25, nsmall = 2), 30),
  March = c(format(60.00, nsmall = 2), 40),
  Apr = c(format(65.00, nsmall = 2), 50),
  May = c(format(74.25, nsmall = 2), 10),
  June = c(format(54.00, nsmall = 2), 45)
)
print(cruz)
b.
liter <- as.numeric(cruz[1, -1])  
purchase <- as.numeric(cruz[2, -1])
wm <- weighted.mean(liter, purchase)
print(wm)  

7. 
c.
a.
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))
b.
print(data)  

8.
a.
PowerRanking <-c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)

CelebName <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGaw", "Jay Lenon", "Celine Dion", "Kobe Bryant")

Pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31 )

print(PowerRanking)
print(CelebName)
print(Pay)
b.
JK<- which(CelebName == "J.K Rowling")

PowerRanking <- PowerRanking [-JK]
CelebName <- CelebName[-JK]
Pay <- Pay[-JK]

PowerRanking <- append(PowerRanking, 15, after = 14)
CelebName <- append(CelebName, "J.K Rowling", after = 14)
Pay <- append(Pay, 90, after = 14)

print(PowerRanking)
print(CelebName)
print(Pay)
c.
data <- read.csv("PowerRanking.csv")
print(data)
d.
SubsetData <- data[10:20, ]
save(SubsetData, file = "Ranks.RData")
print(SubsetData)

9.
a.
library(readxl)
data <- read_excel("hotels-vienna.xlsx")
head(data)
b.
dimensions <- dim(data)               
print(dimensions) 
c.
data <- read_xlsx("hotels-vienna.xlsx")
SelectedCol <- data[c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
print(SelectedCol)
d.
save(SelectedCol, file = "new.RData")
e.
head("new.RData")
tail("new.RData")

10. 
  a. 
  vegetables <- c("Carrot", "Potato", "Spinach", "Corn", "Cucumber", "Okra", "Cabbage", "Cauliflower", "Tomato", "Pumpkin")
  print(vegetables)
  b.
  vegetables <- c(vegetables, "Lettuce","Onion")
  print(vegetables)
  c.
  vegetables <- append(vegetables, c("Bitter Gourd", "Garlic", "Beetroot", "Eggplant"), after = 5)
  print(vegetables)
  length(vegetables)
  d.
  vegetables <- vegetables[-c(5, 10, 15)]
  print(vegetables)
  length(vegetables)