# Split data
set.seed(42)
trainIndex <- createDataPartition(df$charges, p = 0.8, list = FALSE)
train <- df[trainIndex, ]
test <- df[-trainIndex, ]
#set.seed(42) makes results reproducible.
#createDataPartition() splits your data, selecting 80% (p = 0.8) of the rows for training.
#train contains 80% of the data; test contains the remaining 20%.

# Train model
model <- lm(charges ~ age + sex + bmi + children + smoker + region, data = train)
#Fits a linear regression model on the training data.

# Predict
predictions <- predict(model, newdata = test)
#Uses the trained model to predict charges on the test set.

# Evaluate
MAE <- mean(abs(predictions - test$charges))
#MAE (Mean Absolute Error) measures average absolute difference between predicted and actual charges — lower is better.

R2 <- summary(model)$r.squared
#R2 (R-squared) measures how well the model fits the training data, but note it’s not calculated on the test set here.

cat("Mean Absolute Error:", round(MAE, 2), "\n")
cat("R-squared (on training):", round(R2, 2), "\n")
#It prints the label and the rounded value of MAE and R-squared in a neat way.
#\n adds a line break after each message.