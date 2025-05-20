# LINEAR REGRESSION

model <- lm(charges ~ age + sex + bmi + children + smoker + region, data = df)
#This fits a linear regression model to predict the dependent variable using the predictors.
#The model estimates how each predictor affects medical charges while controlling for the others.

summary(model)
#Displays a detailed summary of the regression results.