## ---- Input-Data

raw_data <- read.csv("Data/twitter-hate-speech-classifier-data.csv")
raw_data <- raw_data[c('tweet_text', 'does_this_tweet_contain_hate_speech', 'tweet_id')]
# Filtering first 3000 rows due to limited computational capacity
raw_data <- raw_data[1:3000,]
# Converting classification to numeric values
raw_data$class <- as.numeric(raw_data$does_this_tweet_contain_hate_speech)
# unique(raw_data$class) #checking values
# toString(raw_data$tweet_text) #checking tweets


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
stopwords = c(stopwords('en'))
raw_data$tweet_clean1  = removeWords(raw_data$tweet_clean1,stopwords)

# Shrink down to just one white space
raw_data$tweet_clean1 <- stringr::str_replace_all(raw_data$tweet_clean1,"[\\s]+", " ")

# One hot encoding of tokens
datadb <- data.frame (
  Class = raw_data$class,
  Document = raw_data$tweet_clean1
)

corpus <- Corpus(VectorSource(datadb$Document))
dtm <- DocumentTermMatrix(corpus)
dtm2 <-  cbind(datadb$Class, as.matrix(dtm))
colnames(dtm2) <- c("Classification", colnames(dtm))
#dtm2[1:5, 1:5] #Quality check

## ---- Output-Data

#Saving prepared dataset as a csv file in Data folder
write.csv(dtm2, "Data/prepared_tweet_dataset.csv")


