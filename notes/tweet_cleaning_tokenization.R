## Importing tagged tweet dataset
raw_data <- read.csv("D:/UW_MSDS/Q2 - Reproducibility/ReplicationProject/raw_tweet_data.csv", stringsAsFactors = TRUE)

##Checking different classifications for tweets
unique(raw_data$does_this_tweet_contain_hate_speech)
#abc <- as.data.frame(raw_data)

## Converting classification to numeric values (1,2,3)
raw_data$class <- as.numeric(raw_data$does_this_tweet_contain_hate_speech)
unique(raw_data$class)

## Tweet Cleaning - Punctuation Removal
#install.packages('tm')
library(tm)
data<-removePunctuation(to.string(abc$tweet_text))

## Tokenization Test

# my.text = c("omnis", "homines", "qui", "sese", "student", "praestare", 
#             "ceteris", "animalibus", "summa", "ope", "niti", "decet", "ne",
#             "vitam", "silentio", "transeant", "veluti", "pecora", "quae",
#             "natura", "prona", "atque", "ventri", "oboedientia", "finxit")
# delete.stop.words(my.text, stop.words = c("qui", "quae", "ne", "atque"))
# 

stopwords = c(stopwords('en'))     #Your stop words file
x  = raw_data$tweet_text           #Company column data
x  =  removeWords(x,stopwords)     #Remove stopwords
raw_data$tweet_cleaned <- x        #Add the list as new column and check

#head(raw_data$tweet_new, 5)


