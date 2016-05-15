sigmoid
=======
[![License](http://img.shields.io/badge/license-GPLv3-brightgreen.svg?style=flat)](http://www.gnu.org/licenses/gpl-3.0.html)
[![CRAN Version](http://www.r-pkg.org/badges/version/sigmoid)](https://cran.r-project.org/package=sigmoid)
[![Total RStudio Cloud Downloads](http://cranlogs.r-pkg.org/badges/grand-total/sigmoid?color=brightgreen)](http://cran.rstudio.com/web/packages/sigmoid/index.html)
[![RStudio Cloud Downloads](http://cranlogs.r-pkg.org/badges/sigmoid?color=brightgreen)](https://cran.r-project.org/package=sigmoid)
[![Travis-CI Build Status](https://travis-ci.org/bquast/sigmoid.svg?branch=master)](https://travis-ci.org/bquast/sigmoid)
[![Coverage Status](https://img.shields.io/coveralls/bquast/sigmoid.svg)](https://coveralls.io/r/bquast/sigmoid?branch=master)

Implementation of a Recurrent Neural Network in R.

Installation
------------
The **stable** version can be installed from [CRAN](https://cran.r-project.org/package=sigmoid) using:

```r
install.packages(‘sigmoid’)
```

The **development** version, to be used **at your peril**, can be installed from [GitHub](http://github.com/bquast/sigmoid) using the `devtools` package.

```r
if (!require('devtools')) install.packages('devtools')
devtools::install_github('bquast/sigmoid’)
```


Usage
-------------

Following installation, the package can be loaded using:

```r
library(sigmoid)
```

For general information on using the package, please refer to the help files.

```r
help(‘sigmoid’)
help(package=‘sigmoid’)
```


Additional Information
-----------------------

An overview of the changes is available in the NEWS file.

```r
news(package=‘sigmoid’)
```

There is a dedicated website with information hosted on my [personal website](http://qua.st/).

http://qua.st/sigmoid


Development
-------------
Development takes place on the GitHub page.

http://github.com/bquast/sigmoid

Bugs can be filed on the issues page on GitHub.

https://github.com/bquast/sigmoid/issues
