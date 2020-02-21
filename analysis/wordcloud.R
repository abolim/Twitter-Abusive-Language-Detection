## ---- Input-Data

raw_data <- read.csv("Data/twitter-hate-speech-classifier-data.csv")
raw_data <- raw_data[c('tweet_text', 'does_this_tweet_contain_hate_speech', 'tweet_id')]
# Filtering first 3000 rows due to limited computational capacity
set.seed(123)
shuffled_row <- sample(nrow(raw_data))
shuffled_row <- shuffled_row[1:3000]
raw_data <- raw_data[shuffled_row,]
# Converting classification to numeric values
raw_data$class <- as.numeric(raw_data$does_this_tweet_contain_hate_speech)
# unique(raw_data$class) #checking values
toString(raw_data$tweet_text) #checking tweets


## ---- Loading-Libraries

library(stringr)  #for data prep
library(tm)       #stop word removal
library(quanteda) #tokenization

## ---- Data-Preparation

# Remove everything that is not a number or letter
raw_data$tweet_clean1 <- stringr::str_replace_all(raw_data$tweet_text,"[^@a-zA-Z\\s]", " ")

# Removing twitter handles
raw_data$tweet_clean1 <- str_remove_all(raw_data$tweet_clean1,"@[[:alnum:]]*")

# Convert tweets to lowercase
raw_data$tweet_clean1 <- tolower(raw_data$tweet_clean1)

# Stopword removal
stopwords = c(stopwords('en'),"https")
raw_data$tweet_clean1  = removeWords(raw_data$tweet_clean1,stopwords)

# extra <- c("https")
# raw_data$tweet_clean1  = removeWords(raw_data$tweet_clean1,"")

# Shrink down to just one white space
raw_data$tweet_clean1 <- stringr::str_replace_all(raw_data$tweet_clean1,"[\\s]+", " ")

## ---- Word Cloud




wordcloud_data <- raw_data[raw_data$class == 3,] #|| raw_data$Classification == 3]

dim(wordcloud_data)

source('http://www.sthda.com/upload/rquery_wordcloud.r')
filePath <- toString(wordcloud_data$tweet_clean1)
res<-rquery.wordcloud(filePath, type ="text", lang = "english")

