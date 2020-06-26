
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bubblyr

<!-- badges: start -->

<!-- badges: end -->

`bubblyr` is an R wrapper of the JavaScript library
[bubbly-bg](https://github.com/tipsy/bubbly-bg). It allows you to add
beautiful animated bubbles within Shiny and RMarkdown backgrounds. You
can choose from several themes and apply the animation with one line of
code.

## Installation

You can install the development version of `bubblyr` from Github with:

``` r

install.packages("remotes") #if not installed

remotes::install_github("feddelegrand7/bubblyr")
```

# Themes

Here a list of all the available themes. Note that The ocean, cherry,
hippie, bigmom and deepsea themes are provided by the author of the
bubbly-bg library, I just gave them some fancy names:

| Themes   |
| :------- |
| ocean    |
| cherry   |
| hippie   |
| bigmom   |
| deepsea  |
| illusion |
| rstudio  |
| ash      |
| classy   |
| volcano  |
| lacoste  |
| warmup   |
| fire     |
| traffic  |
| life     |
| darksky  |
| orangina |
| meteor   |

Below you can find some examples, feel free to experiment the remaining
themes:

#### Important: You may experiment some lags if you view your Shiny app in RStudio, instead experiment the themes in the browser.

``` r
library(shiny)
library(bubblyr)

ui <- fluidPage(

    bubbly(theme = "bigmom")

)

server <- function(input, output) {}

shinyApp(ui = ui, server = server)
```

![](man/figures/bigmom.gif)

``` r
library(shiny)
library(bubblyr)

ui <- fluidPage(

    bubbly(theme = "rstudio")

)

server <- function(input, output) {}

shinyApp(ui = ui, server = server)
```

![](man/figures/rstudio.gif)

``` r
library(shiny)
library(bubblyr)

ui <- fluidPage(

    bubbly(theme = "classy")

)

server <- function(input, output) {}

shinyApp(ui = ui, server = server)
```

![](man/figures/classy.gif)

## Code of Conduct

Please note that the bubblyr project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
