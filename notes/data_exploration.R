# While the code works, we faced issues with properly formatting the output

df = df[c("tweet_id", "tweet_text", "does_this_tweet_contain_hate_speech")]
print(c("total number of tweets", dim(df)[1]))
head(df)
dim(df)
str(df)
summary(df)
colnames(df)


