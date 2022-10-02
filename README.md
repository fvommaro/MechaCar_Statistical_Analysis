# MechaCar_Statistical_Analysis
Challenge 15

## Linear Regression to Predict MPG
![Linear Regression to Predict MPG](img/1.png)

### 1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The varilables that provided a non-randmon amout of variance to the mpg are vehicle_length, ground_clearance and the intercept.

### 2. Is the slope of the linear model considered to be zero? Why or why not?

No. The p-value of our linear regression analysis is 5.35 x 10-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

### 3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Yes, because it provides an r-squared of 0.7149 which is significantly higher than the r-squared value of 0.3715 obtained by performing a linear regression of mpg with vehicle_length only. The other variables when analyzed independently provide even lower r-squared values.


## Summary Statistics on Suspension Coils

When looking at the summary data for our MechaCar suspension coils it seems the variance of the suspension coils of 62.29 is not exceeding the limit of 100 per square inch.

![Total Summary](img/2.png)

But when looking at the summary data now grouped by Lot, we see the data for Lot3 indicating a variance of 170.27 pounds per square inch, which is much higher than the limit specific in the design. Lots 1 and 2 provide a variance of 0.98 and 7.47 respectively, which is within the design limit.

![Lot Summary](img/3.png)

## T-Tests on Suspension Coils

## Study Design: MechaCar vs Competition

