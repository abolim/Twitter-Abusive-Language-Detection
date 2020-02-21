
## ---- Input-Data

dtm2 <- read.csv("../Data/prepared_tweet_dataset.csv")

## ---- Loading-Libraries

library(LiblineaR) #for logistic regression
#library(randomForest) #for random forest
library(caret) #for accuracy, precision, recall metrics

## ---- Test-Train-Data-Split

## 80% of the sample size
smp_size <- floor(0.80 * nrow(dtm2))
## Set seed to make your partition reproducible
set.seed(123)
#Setting indices for training and test sets
train_ind <- sample(seq_len(nrow(dtm2)), size = smp_size)
train <- dtm2[train_ind, ]
test <- dtm2[-train_ind, ]

# ncol(test) #quality check
# nrow(train) #quality check
# head(colnames(test), n=1) #quality check
# head(colnames(train), n=1) #quality check
# dim(train) #quality check

#Splitting training set into independent (x) and dependent (y) variables
train_x = train[,2:ncol(train)]
train_y = train[,1:1]
#Splitting test set into independent (x) and dependent (y) variables
test_x = test[,2:ncol(test)]
test_y = test[,1:1]
# dim(test_x) #quality check
# length(test_y) #quality check

## ---- Running-the-Model

# Fitting the logistic regression model using training data
model_logistic=LiblineaR(data=train_x,target=train_y,
                         type=7,bias=TRUE,verbose=FALSE)
# Predicting y-values on test data
p=predict(model_logistic,test_x)
predicted <- p$predictions
#Creating confusion matrix for predicted values
confusion=table(test_y, predicted)
confusion
#Calculating model accuracy
accuracy=sum(diag(confusion))/sum(confusion)
accuracy
#Calculating model precision
precision=diag(confusion)/rowSums(confusion)
precision
total_model_precision=mean(precision)
total_model_precision
#Calculating model recall
recall=diag(confusion)/colSums(confusion)
recall
total_model_recall=mean(recall)
total_model_recall
#Calculating model F1 score
f1=(2*precision*recall)/(precision+recall)
f1
total_model_f1=mean(f1)
total_model_f1
#ROC curve
x=as.data.frame(paste(test_y,predicted))
x
rocdata=multi_roc(x, force_diag=TRUE)
plot_roc_data(rocdata)




