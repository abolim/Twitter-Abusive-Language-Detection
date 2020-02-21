
#GLM Model for logistic regression
library(glm2)
mylogit <- glm(classification~., family = "binomial", data = model_dataset)
summary(mylogit)

#Random forest model
model_randomF <- randomForest(Classification ~ ., data = test, importance = TRUE)
p=predict(model_randomF,test_x)
precision=posPredValue(factor(p),factor(test_y),positive=“1”)
recall=sensitivity(p,test_y,positive=“1”)