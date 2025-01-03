### tsbox::tsbox-package()

#### Description

The R ecosystem knows a vast number of time series classes: ts, xts,
zoo, tsibble, tibbletime, tis, or timeSeries. The plethora of standards
causes confusion. As different packages rely on different classes, it is
hard to use them in the same analysis. tsbox provides a set of tools
that make it easy to switch between these classes. It also allows the
user to treat time series as plain data frames, facilitating the use
with tools that assume rectangular data.

#### Details

The package is built around a set of functions that convert time series
of different classes to each other. They are frequency-agnostic, and
allow the user to combine multiple non-standard and irregular
frequencies. Because coercion works reliably, it is easy to write
functions that work identically for all classes. So whether we want to
smooth, scale, differentiate, chain-link, forecast, regularize or
seasonally adjust a time series, we can use the same tsbox-command for
any time series classes.

The best way to start is to check out the package
[website](https://docs.ropensci.org/tsbox/).

In the *ropensci* classification, this package is *An improvement on
other implementations of similar algorithms in **R***. Many time series
packages, e.g., [zoo](https://CRAN.R-project.org/package=zoo) or
[tsibble](https://CRAN.R-project.org/package=tsibble) contain converter
functions from one class to another. They often convert from their class
to `ts` objects and back, but lack converters to other time series
class.

In most cases, tsbox transforms an object into an augmented
`data.table`. And uses the `data.table` infrastructure for efficient
joining and reshaping. After computation, it restores the original input
class. This restoring feature is was also used in the `xts::reclass()`
function of the [xts](https://CRAN.R-project.org/package=xts) package.

#### Author(s)

Christoph Sax <christoph.sax@gmail.com>

#### See Also

Useful links:

-   <https://docs.ropensci.org/tsbox/>

-   <https://github.com/ropensci/tsbox>

-   Report bugs at <https://github.com/ropensci/tsbox/issues>
