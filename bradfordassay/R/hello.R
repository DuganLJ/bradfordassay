#' Data Analysis for Bradford Assay
#' @export
BradfordAssay <- function(){
  #These lines  creates a plot with our standard data with a line of best fit which will be useful for printouts
  plot(STANDARD$concentration, STANDARD$absorbance,
       main = "Protein Concentration vs. Absorbance (750 nm)",
       xlab = "Protein Concentration (mg/ml)",
       ylab = "Absorbance (750 nm")
  abline(lm(STANDARD$absorbance ~ STANDARD$concentration), col = "red")

  #This line takes the values from our line of best fit and adds them to an object which will will access in a later function
  bestfit <- lm(formula = STANDARD$absorbance ~ STANDARD$concentration)

  #These lines create a function which can be used to predict protein concentrations based on absorbance values
  predictconcentration <- function(absorbance) {
     concentration <- ((absorbance - bestfit$coefficients[[1]])/bestfit$coefficients[[2]])
     return(concentration)
    }

  #This line runs our unknown values through the function we previously created and adds them to a list
  UNKNOWNCONCENTRATION <- c(predictconcentration(UNKNOWNSAMPLES))

  #These lines give us a graph of our known absorbance values and predicted protein concentrations
  plot(UNKNOWNCONCENTRATION, UNKNOWNSAMPLES,
       main = "UnknownProtein Concentration vs. Absorbance (750 nm)",
       xlab = "Predicted Protein Concentration (mg/ml)",
       ylab = "Absorbance (750 nm")
  abline(lm(STANDARD$absorbance ~ STANDARD$concentration), col = "red")

  #This provides us with a dataframe of our samples with both the absorbance and predicted concentration values.
  cbind(data.frame(UNKNOWNSAMPLES), data.frame(UNKNOWNCONCENTRATION))

}
