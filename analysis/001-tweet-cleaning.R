# ---- Cleaning-tweets
raw_data=read.csv("Data/twitter-hate-speech-classifier-data.csv")
raw_data$class <- as.numeric(raw_data$does_this_tweet_contain_hate_speech)
unique(raw_data$class)

install.packages("quanteda")
library(quanteda)

#Text cleaning
tweets=raw_data$tweet_text
tweets=tolower(tweets) 
tweets=head

library(tidyverse)    

clean_tweets <- function(x) {
  x %>%
    str_remove_all(" ?(f|ht)(tp)(s?)(://)(.)[.|/](.)") %>%
    str_replace_all("&amp;", "and") %>%
    str_remove_all("[[:punct:]]") %>%
    str_remove_all("^RT:? ") %>%
    str_remove_all("@[[:alnum:]]+") %>%
    str_remove_all("#[[:alnum:]]+") %>%
    str_replace_all("\\\n", " ") %>%
    str_to_lower() %>%
    str_trim("both")
  gsub('[0-9]+', '', tweets)
}
tweets %>% clean_tweets

cleaned_tweets=clean_tweets(tweets)

#library(tm)

#cleaned_tweets_sw=tm_map(cleaned_tweets, removeWords, stopwords('english'))
#x<- tokens_select(cleaned_tweets,stopwords(), selection=)
