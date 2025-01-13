# Create Vector

uni_A <- c(1.33,1.52,2.02,2.05,2.14,
           2.29,2.36,2.42,2.48,2.62,
           2.71,2.81,2.81,2.82,2.96,
           2.99,3.11,3.12,3.12,3.18,
           3.21,3.25,3.37,3.58,3.70)

uni_B <- c(1.57,1.97,2.00,2.06,2.07,
           2.11,2.48,2.51,2.64,2.75,
           2.77,2.82,3.04,3.08,3.11,
           3.15,3.25,3.27,3.27,3.36,
           3.45,3.45,3.49,3.74,3.80)

# Create DataFrame from vector using as.data.frame()

uni_A <- as.data.frame(A)
uni_B <- as.data.frame(B)

full_uni <- merge(A,B)


#Exploratory Data Analysis

summary(full_uni)

# Find Standard Deviation

sd(full_uni$A)
sd(full_uni$B)

#Visualization

# Create boxplot A
bp_uniA <- boxplot(full_uni$A, main = "University A", ylab = "GPA")

# Create boxplot B
bp_uniB <- boxplot(full_uni$B, main = "University B", ylab = "GPA")
