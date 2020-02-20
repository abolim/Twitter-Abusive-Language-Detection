## Train and test data creation
data(mtcars)

## 75% of the sample size
smp_size <- floor(0.75 * nrow(mtcars))

## set the seed to make your partition reproducible
set.seed(123)
train_ind <- sample(seq_len(nrow(mtcars)), size = smp_size)

train <- mtcars[train_ind, ]
test <- mtcars[-train_ind, ]

## Logistic Regression

mylogit <- glm(Classification ~., family = "binomial", data = model_dataset)
summary(mylogit)

## Drop column names
df <- subset(df, select = -c(col1, col20))

## Stopword removal 1
library(tm)
stopwords = c(stopwords('en'))     #Your stop words file
x  = raw_data$tweet_text        #Company column data
x  =  removeWords(x,stopwords)     #Remove stopwords
raw_data$tweet_cleaned <- x     #Add the list as new column and check

## Stoword removal 2

stopwords = c("the", "by", "warning")     #Your stop words file
x  = raw_data$tweet_text        #Company column data
x  =  removeWords(x,stopwords)     #Remove stopwords

raw_data$tweet_new <- x     #Add the list as new column and check

## Stopword removal 3
ibrary(tm)
stopwords = readLines('stopwords.txt')     #Your stop words file
x  = df$company        #Company column data
x  =  removeWords(x,stopwords)     #Remove stopwords
df$company_new <- x     #Add the list as new column and check
stopwords = c("Inc","inc","co ","Co ","Inc."," Co\\.","LLC","Corporation","Corp","&")
gsub(paste0(stopwords,collapse = "|"),"", df$Company)
df$Company <- gsub(paste0(stopwords,collapse = "|"),"", df$Company)
clean_df <- df %>%
  anti_join(stop_words, by= c("token" = "word"))

## Stopword removal 4
library(quanteda)
x<- tokens_select(x,stopwords(), selection=)

## Stopword removal 5
text_df$text = removeWords(text_df$text, stopwords("spanish"))
text_df$text = stripWhitespace(text_df$text)

library(tm)
library(dplyr)
library(tidytext)

# (i) excluding stop words from a vector
my.text = c("omnis", "homines", "qui", "sese", "student", "praestare", 
            "ceteris", "animalibus", "summa", "ope", "niti", "decet", "ne",
            "vitam", "silentio", "transeant", "veluti", "pecora", "quae",
            "natura", "prona", "atque", "ventri", "oboedientia", "finxit")
delete.stop.words(my.text, stop.words = c("qui", "quae", "ne", "atque"))
