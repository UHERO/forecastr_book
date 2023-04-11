# Stochastic simulations

The model selection process stores a set of general equations (coefficient estimates are not plugged in) in a text file. Before simulation can commence, several steps need to take place: compile the system of equations, add data to the equations, estimate equations. `bimets` does not automatically adjust the sample for missing data points, so need to identify the time period with a rectangular sample for the estimation of each equation. For forecasting, deal with the ragged edge of the data by finding the last data point for each series and "exogenize" the series up to that point (use actuals in simulation).

## Main user settings  
- Start of forecast period.  
- End of forecast period.  
- End of estimation period.  
- Maximum number of lags in models.  

## Data preparation
- Download all series used in the model selection process from UDAMAN (about 500 rows and 1200 columns) and eliminate special characters from the series names.  
- Load (create) all indicators (dummies for impulse, level shift, seasonal) and trend.  
- Combine all variables into a single dataset. 

## Simulation prep
- Compile model (load equations from text file and let `bimets` digest the info).
- Add variables to model.
- Set date range for estimation (`bimets` does not automatically drop periods with NA's).
- Set exogenization range to deal with ragged edge in simulation.  
- Estimate model equations and save estimation results to text file for inspection.
- Set add factors.

## Simulation
- Simulate model deterministically to obtain mean forecast.
- Extract forecast and combine it with history.
- Inspect the forecast via plots.
- Set parameters for stochastic simulations.
- Run stochastic simulation.
- Extract simulated paths and obtain deviations from the mean forecast.
- Inspect the paths via plots.

