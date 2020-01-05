library(sigmoid)
x = -5:5
expect_equal(x, sigmoid(sigmoid(x), inverse=TRUE) )
expect_equal(x, sigmoid(sigmoid(x, method='Gompertz'), method='Gompertz', inverse=TRUE) )
expect_equal(c(0,0,0,0,0,0,1,2,3,4,5), sigmoid(x, method='ReLU') )
expect_equal(c(-0.05,-0.04,-0.03,-0.02,-0.01,0,1,2,3,4,5), sigmoid(x, method='leakyReLU') )
expect_equal(0.4054651, logit(0.6) )
