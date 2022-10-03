# Import and read the CSV file into a dataframe
mc <- read.csv("MechaCar_mpg.csv", header = TRUE, sep = ",", check.names=F, stringsAsFactors = F)
mc

# Linear regression
model_mc <- lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mc)

# Generate summary statistics
summary(model_mc)


# Import and read the Suspension_Coil.csv file into a dataframe
sc <- read.csv("Suspension_Coil.csv", header = TRUE, sep = ",", check.names=F, stringsAsFactors = F)
sc

# Create dataframe to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column
total_summary <- sc %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
total_summary

# Create dataframe to group each manufacturing lot by the mean, median, variance and standard deviation of the suspension coil’s PSI column
lot_summary <- sc %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary

# T-TEST
#compare sample versus population means - PSI
#t.test(log10(sample_table$Miles_Driven),mu=mean(log10(population_table$Miles_Driven))) 
t.test(sc$PSI, mu=1500) 

t.test(subset(sc$PSI, sc$Manufacturing_Lot == "Lot1"), mu=1500)
t.test(subset(sc$PSI, sc$Manufacturing_Lot == "Lot2"), mu=1500)
t.test(subset(sc$PSI, sc$Manufacturing_Lot == "Lot3"), mu=1500)
