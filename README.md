# CVID
An R model to predict disease severity using immunological features

# Disease Severity Prediction Model

This repository contains an R model to predict disease severity (severe or non-severe) based on immunological features.

## Features
The model uses the following features:
- IgG 
- IgA 
- IgM 
- CD4
- Th_Tc_ratio
- CD19
- CSW
- CD16

## Outcome
- `1`: Severe
- `0`: Non-severe

## Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/drumair/CVID/disease-severity-prediction.git

2. Install required R packages:
   install.packages(c("randomForest", "plumber"))

3. Run the API:
   library(plumber)
   r <- plumb("api.R")
   r$run(port = 8000)

4. Make predictions by sending a POST request to the API endpoint:
   http://localhost:8000/predict
