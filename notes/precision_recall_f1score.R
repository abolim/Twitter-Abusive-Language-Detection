#Precision - Recall - F1 Score for Binary Response
predict <- sample(c(0, 1), 20, replace=T) #predicted class
true <- sample(c(0, 1), 20, replace=T) #true values

retrieved <- sum(predict)
precision <- sum(predict & true) / retrieved
recall <- sum(predict & true) / sum(true)
Fmeasure <- 2 * precision * recall / (precision + recall)

measurePrecisionRecall <- function(predict, actual_labels){
  precision <- sum(predict & actual_labels) / sum(predict)
  recall <- sum(predict & actual_labels) / sum(actual_labels)
  fmeasure <- 2 * precision * recall / (precision + recall)
  
  cat('precision:  ')
  cat(precision * 100)
  cat('%')
  cat('\n')
  
  cat('recall:     ')
  cat(recall * 100)
  cat('%')
  cat('\n')
  
  cat('f-measure:  ')
  cat(fmeasure * 100)
  cat('%')
  cat('\n')
}

# Create a sample
predicted <- as.factor(sample(c(1, 2, 3), 100, replace=T))
realized  <- as.factor(sample(c(1, 2, 3), 100, replace=T))


# Compute the confusion matrix and all the statistics
library(caret)
result <- confusionMatrix(predicted, realized, mode="prec_recall")

result
result$byClass["Precision"]
result$byClass["Recall"]
result$byClass["F1"]
