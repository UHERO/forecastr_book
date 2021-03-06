# Model selection

The model selection process can be run line-by-line from an R script directly (R/gets_model_select.R) or via sourcing an Rmd document (notes/gets_model_select.Rmd) which collects all model selection results in an easier to digest html file. Running the full script (source) takes about 1 minute. 

## Main user settings  
- Start and end of period used for model selection.  
- End of period used for estimation (selected model can be re-estimated for different sample).  
- Start and end of quasi-forecast period (for model evaluation).  
- Maximum number of lags considered in models.  
- Response variable.  
- List of predictors.  

## Data preparation (`tidyverse`)  
- Download all series used in the model selection process from UDAMAN (about 500 rows and 1200 columns) and eliminate special characters from the series names.  
- Log-transform all variables.  
- Load (create) all indicators (dummies for impulse, level shift, seasonal) and trend.  
- Combine all variables into a single dataset.  
- Set date range for model selection.  
- Generate 8 lags of predictors.  
- Filter data set down to specific variables considered in a particular model, including trend and season dummies.  

## Model selection steps (`gets`)  
<https://cran.r-project.org/web/packages/gets/index.html>  
- Formulate a general unrestricted model.  
- Run the gets (general to specific) model selection algorithm.  
- Identify outliers in the relationship.  
- Repeat gets model selection over specific model and outliers.  
- Verify that no additional outliers arise due to greater model parsimony.  
- If estimation period is shorter than model selection period, remove predictors containing zeros only (e.g. outlier past the end of estimation period).  
- Re-estimate final model.  
- Save model equation as a txt file (not plugging in estimated coefficients here to keep it general). If happy with the model, copy this equation into file containing all model equations.  

## Produce a quasi-forecast with the selected model (`bimets`)  
<https://cran.r-project.org/web/packages/bimets/vignettes/bimets.pdf>  
- Load model from txt file.  
- Load data used by the model.  
- Estimate the model (if estimation period ends before the last data point also run a Chow test of model stability).  
- Simulate model.  
- Evaluate simulation by plotting quasi-forecast and actual history.  





