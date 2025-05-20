# CHECK FOR MISSING VALUES
colSums(is.na(df))

# CONVERT CATEGORICAL TO FACTORS
df$sex <- as.factor(df$sex)
df$smoker <- as.factor(df$smoker)
df$region <- as.factor(df$region)
