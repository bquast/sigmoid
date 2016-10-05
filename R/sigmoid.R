#' @name sigmoid
#' @export
#' @title Sigmoid
#' @description computes sigmoid nonlinearity
#' @param  x numeric vector
#' @param method type of sigmoid function
#' @param inverse use the inverse of the method (reverses)
#' @param SoftMax use SoftMax preprocessing
#' @param ... arguments to pass on the method
#' @examples 
#' # create input vector
#' a <- seq(-10,10)
#' 
#' # use sigmoid with default standard logistic
#' ( b <- sigmoid(a) )
#' 
#' # show shape
#' plot(b)
#' 
#' # inverse
#' hist( a - sigmoid(b, inverse=TRUE) )
#' 
#' # with SoftMax
#' ( c <- sigmoid(a, SoftMax=TRUE) )
#' 
#' # show difference
#' hist(b-c)

sigmoid <- function(x, method=c('logistic', 'Gompertz', 'tanh'), inverse=FALSE, SoftMax=FALSE, ...) {
  #  find method
  method <- match.arg(method)
  
  if (SoftMax==TRUE)
    x <- SoftMax(x)
  
  if (method=='logistic' && inverse==FALSE) {
    return( logistic(x, ...) )
  } else if (method=='Gompertz' && inverse==FALSE) {
    return( Gompertz(x, ...) )
  } else if (method=='tanh') {
    return( tanh(x) )
  } else if (method=='logistic' && inverse==TRUE) {
    return ( logit(x) )
  } else if (method=='Gompertz' && inverse==TRUE) {
    return( inverse_Gompertz(x) )
  }
  
}

#' @name logistic
#' @title Standard Logistic
#' @param x input vector
#' @param k see details
#' @param x0 see details
#' @description maps numeric vector using logistic function
#' @export
logistic <- function(x, k=1, x0=0)
  1 / (1+exp( -k*(x-x0) ))

#' @name Gompertz
#' @title Gompertz
#' @param x input vector
#' @param a see details
#' @param b see details
#' @param c see details
#' @description maps numeric vector using Gompertz function
#' @export
Gompertz <- function(x, a=1, b=1, c=1)
  a*exp(-b*exp(-c*x))

#' @name logit
#' @title Logit
#' @param x input vector
#' @description maps numeric vector using logit function
#' @export
logit <- function(x)
  log( x / (1-x) )

#' @name relu
#' @title Rectified Linear Unit
#' @param x input vector
#' @description maps numeric vector using ReLU function
#' @export
relu <- function(x)
  ifelse(x >= 0, x, 0)

#' @name leakly_relu
#' @title Leaky Rectified Linear Unit
#' @param x input vector
#' @description maps numeric vector using leaky ReLU function
#' @export
relu_leaky <- function(x)
  ifelse(x >= 0, x, 0.01*x)

#' @name SoftPlus
#' @title SoftPlus
#' @param x input vector
#' @description maps numeric input vector using SoftPlus function
#' @export
softplus <- function(x)
  log(1  + exp(x))

#' @name inverse_Gompertz
#' @title Inverse Gompertz
#' @param x input vector Gompertz values
#' @description maps numeric vector using Gompertz function
#' @export
inverse_Gompertz <- function(x)
  -1*log(-1*log(x))
  
#' @name SoftMax
#' @title SoftMax
#' @importFrom stats sd
#' @param x input vector
#' @param lambda see details
#' @description SoftMax preprocessing
#' @export
SoftMax <- function(x, lambda=2)
  (x-mean(x, na.rm=TRUE)) / ( lambda * (stats::sd(x, na.rm=TRUE)/(2*pi)) )


#' @name sigmoid_output_to_derivative
#' @export
#' @title Sigmoid Derivative
#' @description Convert output of sigmoid function to its derivative.
#' @param x vector of sigmoid values
sigmoid_output_to_derivative <- function(x)
  x*(1-x)

#' @name tanh_output_to_derivative
#' @export
#' @title Tanh Derivative
#' @description Convert output of tanh function to its derivative.
#' @param x vector of tanh values
tanh_output_to_derivative <- function(x)
  1-x^2

#' @name relu_output_to_derivative
#' @title ReLU Derivative
#' @description Converts output of ReLU function to its derivative.
#' @param x vector or ReLU values
relu_output_to_derivative <- function(x)
  ifelse(x > 0, 1, 0)

#' @name softplus_output_to_derivative
#' @title SoftPlus Derivative
#' @description Convert output of SoftPlus function to its derivative.
#' @param x vector of SoftPlus values
#' @export
softplus_output_to_derivative <- function(x)
  1/(1+exp(-x))
