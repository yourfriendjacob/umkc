#Jacob Sauther
#CS5565
#assignment 1, question 8 3.7
#Fall 2022

auto_data = read.csv("C:/Users/Jacob/Documents/GitHub/UMKC/umkc/5565/assignment 1/Auto.csv", header = TRUE, stringsAsFactors = TRUE, na.strings = "?")
View(auto_data)
dim(auto_data)
auto_data = na.omit(auto_data)

auto.lin.fit = lm(auto_data$mpg ~ auto_data$horsepower)
summary(auto.lin.fit)
# ~Y = 39.935861 - 0.157845X

#there appears to be a relationship between the predictor and response.
#the relationship seems fairly strong since it has a low p value (p-value: < 2.2e-16)
# and a low R^2 value: 0.6059

predict(auto.lin.fit, data.frame(horsepower = 98), interval = 'confidence')
predict(auto.lin.fit, data.frame(horsepower = 98), interval = 'prediction')
#  24.151388 14.4938885 33.80889
