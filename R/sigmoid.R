#' @name sigmoid
#' @export
#' @title Sigmoid
#' @description computes sigmoid nonlinearity
#' @param  x numeric vector
#' 

sigmoid <- function(x, method=c('logistic', 'Gompertz'), inverse=FALSE, SoftMax=FALSE, k=1, x0=0, a=1, b=1, c=1) {
  #  find method
  method <- match.arg(method)
  
  if (SoftMax==TRUE)
    x <- SoftMax(x)
  
  if (method=='logistic' && inverse==FALSE) {
    return( logistic(x, k=k, x0=x0) )
  } else if (method=='Gompertz' && inverse==FALSE) {
    return( Gompertz(x, a=a, b=b, c=c) )
  } else if (method=='logistic' && inverse==TRUE) {
    return ( logit(x) )
  } else if (method=='Gompertz' && inverse==TRUE) {
    return( inverse_Gompertz(x) )
  }
  
}

#' @name logistic
#' @title Logistic
#' @param x see details
#' @param k see details
#' @param x0 see details
#' @export
logistic <- function(x, k=1, x0=0)
  1 / (1+exp( -k*(x-x0) ))
  
Gompertz <- function(x, a=1, b=1, c=1)
  a*exp(-b*exp(-c*x))

logit <- function(x)
  log( x / (1-x) )

inverse_Gompertz <- function(x)
  -1*log(-1*log(x))
  
SoftMax <- function(x, lambda=2)
  (x-mean(x, na.rm=TRUE)) / ( lambda * (sd(x, na.rm=TRUE)/(2*pi)) )


#' @name sigmoid_output_to_derivative
#' @export
#' @title Sigmoid Derivative
#' @description Convert output of sigmoid function to its derivative.
#' @param output sigmoid value

sigmoid_output_to_derivative <- function(x)
  x*(1-x)
