runanalysis <- function()
{
  setwd("~/UCI HAR Dataset")
  featurenames <- read.table("features.txt")
  featurenames <- featurenames[,-1]
  setwd("train")
  trainsub <- read.table("subject_train.txt")
  xdata <- read.table("X_train.txt")
  ydata <- read.table("y_train.txt")
  train <- cbind(xdata,ydata,trainsub)
  setwd("~/Desktop/R Programming/UCI HAR Dataset")
  setwd("test")
  testsub <- read.table("subject_test.txt")
  xdata <- read.table("X_test.txt")
  ydata <- read.table("y_test.txt")
  test <- cbind(xdata,ydata,testsub)
  feature <- c(1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,345:350,424:429,503,504,516,517,529,530,542,543)
  data <- rbind(train,test) 
  reqdata <- data[,feature]
  names(reqdata) <- featurenames[feature]
  reqdata$activity <- data[,562]
  reqdata$subject <- data[,563]
  reqdata[reqdata$activity==1,"activity"] <- "walking"
  reqdata[reqdata$activity==2,"activity"] <- "walking_upstairs"
  reqdata[reqdata$activity==3,"activity"] <- "walking_downstairs"
  reqdata[reqdata$activity==4,"activity"] <- "sitting"
  reqdata[reqdata$activity==5,"activity"] <- "standing"
  reqdata[reqdata$activity==6,"activity"] <- "laying"
  feats <- gsub("[()]","",names(reqdata))
  feats <- gsub("-",".",feats)
  feats <- tolower(feats)
  names(reqdata) <- feats
  library(reshape2)
  melted <- melt(reqdata,id=c("activity","subject"))
  tidydata <- dcast(melted,activity+subject~variable,mean)
  write.csv(tidydata,"tidydata.csv",row.names=FALSE)
  tidydata
}