## Input Data
raw_data <- read.csv("Data/twitter-hate-speech-classifier-data.csv")
raw_data <- raw_data[c('tweet_text', 'does_this_tweet_contain_hate_speech', 'tweet_id')]

# Filtering random 3000 tweets due to limited computational capacity
set.seed(123)
shuffled_row <- sample(nrow(raw_data))
shuffled_row <- shuffled_row[1:3000]
raw_data <- raw_data[shuffled_row,] #shuffle dataset
#raw_data <- raw_data[1:3000,]
# Converting classification to numeric values
raw_data$class <- as.numeric(raw_data$does_this_tweet_contain_hate_speech)

## Counts by class
library(dplyr)
bar_data <- raw_data %>%
  group_by( class ) %>%
  tally

names(bar_data) <- c("Class", "Number_of_Tweets")
bar_data$Class <- as.factor(bar_data$Class)
bar_data

## Bar Graph
library(ggplot2)
# Change the width of bars
ggplot(data=bar_data, aes(x= Class, y= Number_of_Tweets)) +
  geom_bar(stat="identity", color="gray", width=0.5, fill = 'steelblue') + 
  theme_minimal()