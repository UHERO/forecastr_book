### fcutils::model_equation()

#### Description

Parse lm() output and convert into bimets equation (GETS model
development)

#### Usage

``` R
model_equation(model, ...)
```

#### Arguments

  ----------------- ------------------------------------------------------
  `model`{#model}   a model estimated by lm() (lm object)
  `...`{#...}       arguments to format the coefficients e.g. digits = 3
  ----------------- ------------------------------------------------------

#### Value

a character vector containing the estimated equation (1) and bimets
components (2:4)

#### Examples

``` R
## this function combines coefficient estimates and variable names into an equation
## in vector element 1 and into bimets components in vector elements 2-4.
## https://stats.stackexchange.com/questions/63600/
## how-to-translate-the-results-from-lm-to-an-equation
data("UKDriverDeaths", package = "datasets")
uk <- log10(UKDriverDeaths)
dfm <- dynlm::dynlm(uk ~ L(uk, 1:3) + L(log(uk), c(5:6, 12)))
model_equation(dfm)
## (1) "uk = - 0.12255631 + 0.42870091 * L(uk, 1:3)1 + 0.06306114 * L(uk, 1:3)2 - 0.09778518 *
## L(uk, 1:3)3 + 0.37480999 * L(log(uk), c(5:6, 12))5 - 0.22709846 * L(log(uk), c(5:6, 12))6 +
## 1.62340449 * L(log(uk), c(5:6, 12))12"
## (2) "BEHAVIORAL> uk"
## (3) "EQ> uk = b0 + b1 * TSLAG(uk, 1) + b2 * TSLAG(uk, 2) + b3 * TSLAG(uk, 3) + b4 *
## TSLAG(LOG(uk), 5) + b5 * TSLAG(LOG(uk), 6) + b6 * TSLAG(LOG(uk), 12)"
## (4) "COEFF> b0 b1 b2 b3 b4 b5 b6"
### fcutils::model_equation()
dfm <- dynlm::dynlm(d(log(uk)) ~ L(uk, c(1, 11, 12)), start = c(1975, 1), end = c(1982, 12))
model_equation(dfm)
## (1) "d(log(uk)) = 0.1018542 - 0.2379287 * L(uk, c(1, 11, 12))1 + 0.0368355 *
## L(uk, c(1, 11, 12))11 + 0.1689896 * L(uk, c(1, 11, 12))12"
## (2) "BEHAVIORAL> TSDELTA_LOG_uk"
## (3) "EQ> TSDELTA(LOG(uk)) = b0 + b1 * TSLAG(uk, 1) + b2 * TSLAG(uk, 11) + b3 * TSLAG(uk, 12)"
## (4) "COEFF> b0 b1 b2 b3"
```