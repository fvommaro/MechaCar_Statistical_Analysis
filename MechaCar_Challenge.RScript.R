#Import and read the CSV file into a dataframe
mc <- read.csv("MechaCar_mpg.csv", header = TRUE, sep = ",", check.names=F, stringsAsFactors = F)
mc

#linear regression
model_mc <- lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mc)

#generate summary statistics
summary(model_mc)

