#Jacob Sauther
#CS5565
#assignment 1, question 8
#Fall 2022

#load csv file
college = read.csv("C:/Users/Jacob/Documents/GitHub/UMKC/umkc/5565/assignment 1/College.csv", header = TRUE)
#rownames(college) = college[, 1]
college = college[, -1]
View(college)

summary(college)
pairs(college[, 1:10])