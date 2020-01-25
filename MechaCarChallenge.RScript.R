# Load packages
library(ggplot2)
library(tidyverse)
library(stargazer)


                            # MPG Regression #
# Using multiple linear regression, design a linear model that predicts the mpg 
# of MechaCar prototypes using a number of variables within the MechaCar mpg dataset.

          # Read in dataset
        Mech_Cars <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F) 
        
          # Generate multiple linear regression model
        lm(mpg ~ vehicle.length + vehicle.weight + ground.clearance + AWD,data=Mech_Cars) 
        
          # Generate summary statistics
        summary(lm(mpg ~ vehicle.length + vehicle.weight + ground.clearance + AWD,data=Mech_Cars))


        
                         # Suspension Coil Summary #
        # Read in the Suspension_Coil dataset
        suspen_data <- read.csv('Suspension_Coil.csv', stringsAsFactors = F)
        
        #Summary Statistics table for the suspension coil's pounds-per-inch continuous variable.   
        
                stargazer(subset(suspen_data, select =c(PSI)), type ='text')
                
                        # Include the following metrics:
                           # Mean = 1498.78
                                mean(suspen_data$PSI)
                                
                           # Median =1500 
                                median(suspen_data$PSI)
                                
                           # Variance = 62.29356
                                var(suspen_data$PSI)
                                
                           # Standard deviation =  7.892627
                                sd(suspen_data$PSI)
        
                
                
                        # Suspension Coil T-Test #
# Determine if the suspension coil's pound-per-inch results are statistically different
# from the mean population results of 1,500 pounds per inch.
        
        # One Sample t-test (testing for the significance of the mean)
                t.test(suspen_data$PSI, mu = 800, conf.level = 0.95)
                

        