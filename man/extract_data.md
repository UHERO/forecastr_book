### fcutils::extract_data()

#### Description

Parse gets output and extract underlying data (GETS model development)

#### Usage

``` R
extract_data(model_in, y_name)
```

#### Arguments

  ----------------------- ------------------------------------------
  `model_in`{#model_in}   a model estimated by arx, isat, or getsm
  `y_name`{#y_name}       the actual name of the y variable
  ----------------------- ------------------------------------------

#### Value

an xts containing the model variables

#### Examples

``` R
## save the data associated with a gets model
```
