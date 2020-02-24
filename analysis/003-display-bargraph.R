#This code takes the tweet_id, class as input data 
#and generates a bar graph showing the counts of tweets per class

# ---- plot-bar-graph
plotBarGraph <- function(data) {
  
  data <- data[c('tweet_text', 'does_this_tweet_contain_hate_speech', 'tweet_id')]
  
  data$class <- as.numeric(data$does_this_tweet_contain_hate_speech)
  
  ## Count of tweets by class
  library(dplyr)
  bar_data <- data %>%
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
    theme_minimal() +
    guides(fill=FALSE) +
    xlab("Classification") + ylab("Number of Tweets") +
    ggtitle("Distribution of Tweets by Class")
}