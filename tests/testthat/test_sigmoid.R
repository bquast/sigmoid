library(sigmoid)
x = -5:5
expect_equal(x, sigmoid(sigmoid(x), inverse=TRUE) )
expect_equal(x, sigmoid(sigmoid(x, method='Gompertz'), method='Gompertz', inverse=TRUE) )
expect_equal(c(0,0,0,0,0,0,1,2,3,4,5), sigmoid(x, method='ReLU') )
