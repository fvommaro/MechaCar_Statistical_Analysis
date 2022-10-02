#Import and read the CSV file into a dataframe
mc <- read.csv("MechaCar_mpg.csv", header = TRUE, sep = ",", check.names=F, stringsAsFactors = F)
mc

#linear regression
model_mc <- lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mc)

#generate summary statistics
summary(model_mc)


#Import and read the Suspension_Coil.csv file into a dataframe
sc <- read.csv("Suspension_Coil.csv", header = TRUE, sep = ",", check.names=F, stringsAsFactors = F)
sc

total_summary <- sc %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
total_summary

#summarize(Mean_Mileage=mean(odometer), .groups = 'keep')
?summarize()