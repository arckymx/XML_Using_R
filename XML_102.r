# Methods to use for i reading unparsed XML file

# Change this object to match the length of the data file
numRecords <- 300

# Data loading
library(XML)
xmlfile <- xmlTreeParse(file = "TEST Entity A.XML")
class(xmlfile)
xmltop = xmlRoot(xmlfile)
#xmltop[[1]][["GeneralInfo"]][["Name"]]
#xmltop[[1]][["WatchList"]][[1]][["EntityScore"]]

# Define the variables to be extracted
names <-list()
entityScores<-list()

for (i in 1:numRecords){
  name<- xmltop[[i]][["GeneralInfo"]][["Name"]]
  score<-xmltop[[i]][["WatchList"]][[1]][["EntityScore"]]
  
  names <-rbind(names,name[[1]])
  entityScores<-rbind(entityScores,score[[1]])
}


pullName<-list()
pullScores<-list()

for (i in 1:numRecords){
  pullName<-rbind(pullName,names[[i,6]])
  pullScores<-rbind(pullScores,entityScores[[i,6]])
}
