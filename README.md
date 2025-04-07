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


   Example
   Send a JSON payload with the features:
   {
  "IgG": 1.2,
  "IgA": 0.8,
  "IgM": 1.1,
  "CD4": 500,
  "Th_Tc_ratio": 1.5,
  "CD19": 200,
  "CSW": 0.7,
  "CD16": 300
   }

   The API will return:
   {
  "prediction": 1
   }

   License
This project is licensed under the Creative Commons Zero v1.0 Universal
