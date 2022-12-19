#loading data
data(iris)

#loading packages
library("e1071")
library("caTools")
library("caret")

#structure
str(iris)

#splitting data into train and test data
split <- sample.split(iris, SplitRatio = 0.7)
train_cl <- subset(iris, split == "TRUE")
test_cl <- subset(iris, split == "FALSE")
print(train_cl)
print(test_cl)

#featuring scaling
train_scale <- scale(train_cl[,1:4])
test_scale <- scale(test_cl[, 1:4])
print(train_scale)
print(test_scale)

#fitting naive Bayes model to training data set
classifier_cl <- naiveBayes(Species ~.,data = train_cl)
classifier_cl

#predicting on test data
y_pred <- predict(classifier_cl,newdata = test_cl)
print(y_pred)

#confusion matrix
cm <- table(test_cl$Species,y_pred)
cm

#model evaluation
confusionMatrix(cm)

