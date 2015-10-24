# Load data.table library
library(data.table)

# Load Test Data 
xTest <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt",sep="",fill=FALSE)
yTest <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt",sep="",fill=FALSE)
subjectTest <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt",sep="",fill=FALSE)

#Load Train Data
yTrain <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/Y_train.txt",sep="",fill=FALSE)
xTrain <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/x_train.txt",sep="",fill=FALSE)
subjectTrain <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt",sep="",fill=FALSE)

#Load activity and feature labels
activities <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt",sep="",fill=FALSE)
features <- read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt",sep="",fill=FALSE)

# Merge the Train and Test data 
traintestdata<-rbind(cbind(subjectTrain,YTrain,xTrain),cbind(subjectTest,YTest,xTest))


#labels<-as.character(features$V2)
#Add the the descriptive column names
names(traintestdata)<-c("subjectid","activity", as.character(features$V2))

#Extract all columns with mean or std data
traintestdata<-traintestdata[,c(1:2,grep("[Mm]ean|[Ss]td",names(traintestdata)))]

# Assign descriptive activity labels
traintestdata$activity <- activities$V2[c(traintestdata$activity)]

# convert to data table and get average of each variable for each activity and each subject.
ttdsummary <- data.table(traintestdata)
ttdsummary <- ttdsummary[, lapply(.SD,mean), by=list(subjectid,activity)]

# clean up the column names
names(ttdsummary) <- tolower(gsub("[,|(|)|-]","",names(ttdsummary)))

#write table to txt file
write.table(ttdsummary,file = "ttdsummary.txt",row.name=FALSE)
