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

uni_A <- as.data.frame(uni_A)
uni_B <- as.data.frame(uni_B)

full_uni <- merge(uni_A,uni_B)


#Exploratory Data Analysis

summary(full_uni)

# Find Standard Deviation

sd(full_uni$uni_A)
sd(full_uni$uni_B)

#Visualization
#parameter
par(mfrow = c(1,2))

# Create boxplot A
bp_uniA <- boxplot(full_uni$uni_A, main = "University A", col = "pink" , ylab = "GPA")

#To Label Q1,Q2,Q3 For Boxplot Uni A
q1A <- bp_uniA$stats[2]
q2A <- bp_uniA$stats[3]
q3A <- bp_uniA$stats[4]

text(1.2, q1A, paste0("Q1 = ", q1A), pos = 4)  # Q1 label
text(1.2, q2A, paste0("Median = ", q2A), pos = 4) # Q2 label
text(1.2, q3A, paste0("Q3 = ", q3A), pos = 4) # Q3 label

# Create boxplot B
bp_uniB <- boxplot(full_uni$uni_B, main = "University B", col = "blue" , ylab = "GPA")

#To Label Q1,Q2,Q3 For Boxplot Uni B
q1B <- bp_uniB$stats[2]
q2B <- bp_uniB$stats[3]
q3B <- bp_uniB$stats[4]

text(1.2, q1B, paste0("Q1 = ", q1B), pos = 4)  # Q1 label
text(1.2, q2B, paste0("Median = ", q2B), pos = 4) # Q2 label
text(1.2, q3B, paste0("Q3 = ", q3B), pos = 4) # Q3 label
