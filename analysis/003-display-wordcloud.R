
# ---- plot-word-cloud
plotWordCloud <- function(data) {

  data <- data[c('tweet_text', 'does_this_tweet_contain_hate_speech', 'tweet_id')]
  # Filtering first 3000 rows due to limited computational capacity
  set.seed(123)
  shuffled_row <- sample(nrow(data))
  shuffled_row <- shuffled_row[1:3000]
  data <- data[shuffled_row,]
  # Converting classification to numeric values
  data$class <- as.numeric(data$does_this_tweet_contain_hate_speech)
  # unique(raw_data$class) #checking values
  toString(data$tweet_text) #checking tweets
  
  
  ## ---- Loading-Libraries
  
  library(stringr)    #for data prep
  library(tm)         #stop word removal
  library(quanteda)   #tokenization
  library(wordcloud)  #wordcloud creation
  
  ## ---- Data-Preparation
  
  # Remove everything that is not a number or letter
  data$tweet_clean1 <- stringr::str_replace_all(data$tweet_text,"[^@a-zA-Z\\s]", " ")
  
  # Removing twitter handles
  data$tweet_clean1 <- str_remove_all(data$tweet_clean1,"@[[:alnum:]]*")
  
  # Convert tweets to lowercase
  data$tweet_clean1 <- tolower(data$tweet_clean1)
  
  # Stopword removal
  stopwords = c(stopwords('en'),"https")
  data$tweet_clean1  = removeWords(data$tweet_clean1,stopwords)
  
  # Shrink down to just one white space
  data$tweet_clean1 <- stringr::str_replace_all(data$tweet_clean1,"[\\s]+", " ")
  
  ## ---- Word Cloud
  
  wordcloud_data <- data[data$class == 3,]
  
  dim(wordcloud_data)
  
  source('http://www.sthda.com/upload/rquery_wordcloud.r')
  filePath <- toString(wordcloud_data$tweet_clean1)
  res<-rquery.wordcloud(filePath, type ="text", lang = "english")
}


