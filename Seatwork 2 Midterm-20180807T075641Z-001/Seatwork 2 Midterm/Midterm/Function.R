#Functions

add5numbers <- function(num1, num2, num3, num4, num5){
  sum_nums = num1 + num2 + num3 + num4 + num5
  sum_nums
}

x <- 1:100
subset_data <- function(datasit, min_datasit=40, max_datasit=80){
  subset_param <- (datasit>min_datasit)&(datasit<max_datasit)
  datasit[subset_param]
}
subset_data(x,6,9)

MeanFunction <- function(dataset_csv, removeNA = TRUE){
  col_num <- ncol(dataset_csv)
  means_per_col <- numeric(col_num)
  for (element in 1:col_num) {
    means_per_col[element] <- mean(dataset_csv[ ,element], na.rm = removeNA)
  }
  means_per_col
}
dotosot <- read.csv("midetrmseatwork_data.csv")

MeanFunction(dotosot)

#Seatwork
dotosot <- read.csv("midetrmseatwork_data.csv")

subset_data <- function(dotosot, Ozone=25, Temp=75){
  col_num<- (dotosot>Ozone)&(dotosot>Temp)
  means_per_col <- numeric(col_num)
  for (element in 1:col_num) {
    means_per_col[element] <- mean(dataset_csv[ ,element], na.rm = removeNA)
  }
  means_per_col
  #1111111111111111111
subset <- function(dotosot, min_dotosot,max_dotosot){
  x <- ifelse(dotosot$Ozone>min_dotosot & dotosot$Temp>max_dotosot,dotosot$Wind,NA)
  mean(x,na.rm = TRUE)
}
subset(dotosot,25,70)
#22222222222
MeanFunction <- function(dotosot, Month, Day){
  Temp <- 0
  for ( row in 1:nrow(dotosot)) {
    Temp[row] <- ifelse(dotosot[row,5]==Month&dotosot[row,6]==Day,dotosot[row,4],NA)
  }
  mean(Temp,na.rm = TRUE)
}
MeanFunction(dotosot,9,8)



