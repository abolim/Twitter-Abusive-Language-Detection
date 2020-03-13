
# just do this once to remove the remove 'Warning: found non-ASCII strings'

raw_data <- read.csv(here("Data","twitter-hate-speech-classifier-data.csv"))

Encoding(levels(raw_data$tweet_text )) <- "latin1"
levels(raw_data$tweet_text) <- iconv(
  levels(raw_data$tweet_text), 
  "latin1", 
  "UTF-8"
)

write.csv(raw_data, here("Data","twitter-hate-speech-classifier-data.csv"))
