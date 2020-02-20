##Cleaning the tweets and checking intermediate outputs

##Punctuation removal code
tweets=gsub("[^[:alnum:]]", " ", tweets)
print(tweets)
length(tweets_dfm)
unique.matrix(tweets_dfm)
print(tweets_dfm)

#Stopword removal code
tweets_dfm=dfm(tweets,remove=stopwords("english"),stem=TRUE,remove_punct=TRUE)
cleaned_tweets_sw=tm_map(cleaned_tweets, removeWords, stopwords('english'))
x<- tokens_select(cleaned_tweets,stopwords(), selection=)
