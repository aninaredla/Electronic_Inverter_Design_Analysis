# Electronic_Inverter_Design_Analysis
Regression Analysis of Electronic Inverter Design Parameters.

## Purpose:
This project explores the performance of electronic inverters by analyzing the relationship between transistor dimensions, operational setpoints, and their transient performance.
The objective is to identify key design parameters and their interactions that significantly influence transient response, enabling optimization of inverter performance.

## Parameters:
Regression Analysis was done on SAS to evaluate the impact of transistor dimensions (WidthNMOS, LengthNMOS, WidthPMOS, LengthPMOS) and operational setpoints (Setpoint) on transient response (TransientPt). 
3 models, including 1 indicator and 2 interaction models were used to assess main effects and higher-order interactions, with diagnostic plots for model evaluation.

## Results:
The interaction model with all 2-way predictor interactions works best for predicting transient response. This is shown by the high R^2 and Adjusted R^2 values (explaining high proportion of response variation), and the high F-statistic and p-value (model is highly significant). 
The other indicator model suggests that LengthNMOS, WidthPMOS and setpoint themselves collectively account for a large proportion of the response variation; while the Indicator model suggests that the setpoint itself largely affects the other predictors’ effect on the response.
