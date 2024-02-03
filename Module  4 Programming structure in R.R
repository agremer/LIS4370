Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)

BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)

First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)

Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)

FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)




# Boxplots and Histograms

boxplot(BP ~ First, main="Boxplot of Blood Pressure by First Assessment", xlab="First Assessment (1=bad, 0=good)", ylab="Blood Pressure")




hist(BP, main="Histogram of Blood Pressure", xlab="Blood Pressure", col="lightblue", border="black")




boxplot(First ~ BP, main="Boxplot of First Assessment by Blood Pressure", xlab="Blood Pressure", ylab="First Assessment (1=bad, 0=good)")




hist(First, main="Histogram of First Assessment", xlab="First Assessment (1=bad, 0=good)", col="lightgreen", border="black")