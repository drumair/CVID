# Load required libraries
library(plumber)
library(jsonlite)

# Load the Random Forest model
model <- readRDS("rf_model.rds")

# Define the API
# Create a function to handle predictions
#' @post /predict
#' @param input_data A JSON object containing input features
function(input_data) {
  # Parse the input JSON into a data frame
  input <- as.data.frame(fromJSON(input_data))
  
  # Ensure the input has the correct feature names
  required_features <- c("IgG", "IgA", "IgM", "CD4", "Th_Tc_ratio", "CD19", "CSW", "CD16")
  if (!all(required_features %in% colnames(input))) {
    stop("Input data must contain all required features: ", paste(required_features, collapse = ", "))
  }
  
  # Make predictions using the loaded model
  numeric_predictions <- predict(model, input)
  
  # Map numeric predictions to labels
  label_predictions <- ifelse(numeric_predictions == 1, "Severe", "Non-severe")
  
  # Return the predictions as a JSON response
  list(predictions = label_predictions)
}

# Save this script as `api.R` and run it using Plumber