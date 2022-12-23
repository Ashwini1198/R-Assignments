library('dplyr')
summary(mtcars)
head(mtcars,5)
tail(mtcars,5)
library('caTools')
library('ROCR')
split <- sample.split(mtcars, SplitRatio = 0.8)
split
train_reg <- subset(mtcars, split == 'TRUE')
train_reg
test_reg <- subset(mtcars, split == 'FALSE')
test_reg
#training model
logistic_model <- glm(vs ~ wt + disp,data = train_reg,family = "binomial")
logistic_model

#summary
summary(logistic_model)

#predict test data based on model
predict_reg <- predict(logistic_model, test_reg, type = "response")
predict_reg

#changing probabilities
predict_reg <- ifeles(predict_reg >0.5, 1, 0)
predict_reg

#evaluating model accuracy
# using confusion matrix
table(test_reg$vs, predict_reg)

missing_classerr <- mean(predict_reg != test_reg$vs)
print(paste('Accuracy =',1 - missing_classerr))

#ROC-AUC curve
ROCPred <- prediction(predict_reg, test_reg$vs)
print(ROCPred)
ROCPer <- performance(ROCPred, measure = 'tpr', x.measure = 'fpr')
print(ROCPer)

auc <- performance(ROCPred, measure = 'auc')
print(auc)
auc <- auc@y.values[[1]]
print(auc)


#plotting curve
plot(ROCPer)
plot(ROCPer, colorize = TRUE, print.cutoff.at = seq(0.1, by = 0.1), main = "ROC CURVE")
abline(a= 0, b=1)

auc <- round(auc,4)
legend(.6, .4, auc, title = "AUC", cex = 1)
