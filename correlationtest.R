
#Author: jasmine, Data:9/04/25, Purpose: Test the correlation

if(!require(devtools)) install.packages("devtools"); devtools::install_github("kassambara/ggpubr")

#load library ggpubr
library(ggpubr)

#load some dummy dataset
my_data <- mtcars

#print first few lines
head(my_data)

#Hypothesis: weight of the car is inversely proportional to the mpg of the car`

ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")

res <- cor.test(my_data$wt, my_data$mpg, method = "pearson") 
res

res2 <-cor.test(my_data$wt, my_data$mpg, method = "spearman")
res2
