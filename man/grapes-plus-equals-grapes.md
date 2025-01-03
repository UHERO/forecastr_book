### fcutils::`%+=%`()

#### Description

Warning: Typing x %+=% y/2 returns x \<- (x + y)/2. Adding parentheses,
i.e. x %+=% (y/2) solves the problem.

#### Usage

``` R
e1 %+=% e2
```

#### Arguments

  ----------- ---------------------------------
  `e1`{#e1}   first addend (and returned sum)
  `e2`{#e2}   second addend
  ----------- ---------------------------------

#### Value

sum of the two addends replacing the values in the first addend

#### Examples

``` R
add_QMOD.xts$VISUS_HI[pq(2022.3, 2023.4)] <- add_QMOD.xts$VISUS_HI[pq(2022.3, 2023.4)] +
  c(0.01, -0.04, rep(-0.025, 4))
add_QMOD.xts$VISUS_HI[pq(2022.3, 2023.4)] %+=% c(0.01, -0.04, rep(-0.025, 4)) ## easier on the eye
```
