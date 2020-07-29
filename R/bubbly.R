

#' Add beautiful interactive bubbles within Shing and RMarkdown backgrounds
#'
#' @param theme Name of the bubbles theme. See the vignette for a list of themes.
#' @param color Text color. Defaults to 'white'
#'
#' @return Themed interactive bubbles for Shiny and RMarkdown backgrounds
#' @export
#'
#' @examples
#'  if (interactive()) {
#'
#'  ui <- fluidPage(
#'
#'  bubbly(theme = "meteor")
#'
#'  )
#'
#'
#'  server <- function(input, output) {}
#'
#'
#'
#'  shinyApp(ui = ui, server = server)
#'
#'
#
#'
#'
#' }
#'
#'


bubbly <- function(theme = "ocean", color = "white") {
  if (!theme %in% c(
    "ocean",
    "cherry",
    "hippie",
    "bigmom",
    "deepsea",
    "illusion",
    "rstudio",
    "ash",
    "classy",
    "volcano",
    "lacoste",
    "warmup",
    "fire",
    "traffic",
    "life",
    "darksky",
    "orangina",
    "meteor",
    "gravitas",
    "rladies",
    "sunshine",
    "sweet",
    "lalaland"

  )) {
    stop(paste0(theme, " theme is not available, did you misspelled the theme ?"))
  }


  if (theme == "ocean") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),

      htmltools::tags$script(htmltools::HTML("bubbly();"))


    )


  } else if (theme == "cherry") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),


      htmltools::tags$script(
        htmltools::HTML(
          "bubbly({colorStart: '#111',colorStop: '#422',bubbleFunc: () => `hsla(0, 100%, 50%, ${Math.random() * 0.25})`});"



        )
      )


    )


  } else if (theme == "hippie") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),


      htmltools::tags$script(
        htmltools::HTML(
          "bubbly({colorStart: '#4c004c',colorStop: '#1a001a',bubbleFunc: () => `hsla(${Math.random() * 360}, 100%, 50%, ${Math.random() * 0.25})`});"



        )
      )


    )



  } else if (theme == "bigmom") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),


      htmltools::tags$script(
        htmltools::HTML(
          "bubbly({colorStart: '#fff4e6', colorStop: '#ffe9e4', blur: 1, compose: 'source-over', bubbleFunc: () => `hsla(${Math.random() * 50}, 100%, 50%, .3)`});"


        )
      )


    )



  } else if (theme == "deepsea") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),

      htmltools::tags$script(
        htmltools::HTML(
          "bubbly({blur:15, colorStart: '#194167', colorStop: '#112144', radiusFunc:() => 5 + Math.random() * 15, angleFunc:() => -Math.PI / 2, velocityFunc:() => Math.random() * 1.5, bubbleFunc:() => `hsla(${200 + Math.random() * 50}, 100%, 65%, .1)`,bubbles:350});"


        )
      )


    )



  } else if (theme == "illusion") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),


      htmltools::tags$script(
        htmltools::HTML(
          "

    bubbly({
    animate: true, // default is true
    blur: 1, // default is 4
    bubbleFunc: () => `hsla(${Math.random() * 360}, 100%, 50%, ${Math.random() * 0.25})`, // default is () => `hsla(0, 0%, 100%, ${r() * 0.1})`)
    bubbles: 1000, // default is Math.floor((canvas.width + canvas.height) * 0.02);
    canvas: document.querySelector('#background'), // default is created and attached
      colorStart: '#ad0e8d', // default is blue-ish
      colorStop: '#7d00d1',// default is blue-ish
      compose: 'lighter', // default is 'lighter'
      shadowColor: '#0ff', // default is #fff
      angleFunc: () => Math.random() * Math.PI * 2, // default is this
      velocityFunc: () => 0.5 + Math.random() * 0.5, // default is this
      radiusFunc: () => 8 + Math.random() * 25 // default is 4 + Math.random() * width / 25
      });



      "




        )
      )
    )




  } else if (theme == "rstudio") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),

      htmltools::tags$script(
        htmltools::HTML(
          "

    bubbly({
    animate: true, // default is true
    blur: 1, // default is 4
    bubbleFunc: () => `hsla(#75AADB, 100%, 50%, 1)`, // default is () => `hsla(0, 0%, 100%, ${r() * 0.1})`)
    bubbles: 100, // default is Math.floor((canvas.width + canvas.height) * 0.02);
    canvas: document.querySelector('#background'), // default is created and attached
      colorStart: '#ECF3F9', // default is blue-ish
      colorStop: '#75AADB',// default is blue-ish
      compose: 'lighter', // default is 'lighter'
      shadowColor: '#0ff', // default is #fff
      angleFunc: () => Math.random() * Math.PI * 2, // default is this
      velocityFunc: () => 0.5 + Math.random() * 0.5, // default is this
      radiusFunc: () => 8 + Math.random() * 25 // default is 4 + Math.random() * width / 25
      });



      "




        )
      )


    )





  } else if (theme == "ash") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),

      htmltools::tags$script(
        htmltools::HTML(
          "

    bubbly({
    animate: true, // default is true
    blur: 2, // default is 4
    bubbleFunc: () => `hsla(30, 100%, 50%, ${Math.random() * 0.25})`, // default is () => `hsla(0, 0%, 100%, ${r() * 0.1})`)
    bubbles: 100, // default is Math.floor((canvas.width + canvas.height) * 0.02);
    canvas: document.querySelector('#background'), // default is created and attached
      colorStart: '#FFFFFF', // default is blue-ish
      colorStop: '#272822',// default is blue-ish
      compose: 'lighter', // default is 'lighter'
      shadowColor: '#FFFFFF', // default is #fff
      angleFunc: () => Math.random() * Math.PI * 2, // default is this
      velocityFunc: () => 1 + Math.random() * 0.5, // default is this
      radiusFunc: () => 20 + Math.random() * 25 // default is 4 + Math.random() * width / 25
      });



      "




        )
      )


    )



  } else if (theme == "classy") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),

      htmltools::tags$script(
        htmltools::HTML(
          "

    bubbly({
    animate: true, // default is true
    blur: 1, // default is 4
    bubbleFunc: () => `hsla(100, 100%, 50%, 1})`, // default is () => `hsla(0, 0%, 100%, ${r() * 0.1})`)
    bubbles: 40, // default is Math.floor((canvas.width + canvas.height) * 0.02);
    canvas: document.querySelector('#background'), // default is created and attached
      colorStart: '#272822', // default is blue-ish
      colorStop: '#4E5C68',// default is blue-ish
      compose: 'lighter', // default is 'lighter'
      shadowColor: '#22A5F1', // default is #fff
      angleFunc: () => Math.random() * Math.PI * 4, // default is this
      velocityFunc: () => 1 + Math.random() * 0.5, // default is this
      radiusFunc: () => 1 + Math.random() * 25 // default is 4 + Math.random() * width / 25
      });



      "




        )
      )


    )






  } else if (theme == "volcano") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),


      htmltools::tags$script(
        htmltools::HTML(
          "

    bubbly({
    animate: true, // default is true
    blur: 1, // default is 4
    bubbleFunc: () => `hsla(250, 20%, 80%, 1})`, // default is () => `hsla(0, 0%, 100%, ${r() * 0.1})`)
    bubbles: 100, // default is Math.floor((canvas.width + canvas.height) * 0.02);
    canvas: document.querySelector('#background'), // default is created and attached
      colorStart: '#d10000', // default is blue-ish
      colorStop: '#dbd534',// default is blue-ish
      compose: 'lighter', // default is 'lighter'
      shadowColor: '#FFE300', // default is #fff
      angleFunc: () => Math.random() * Math.PI * 8, // default is this
      velocityFunc: () => 1 + Math.random() * 0.5, // default is this
      radiusFunc: () => 1 + Math.random() * 25 // default is 4 + Math.random() * width / 25
      });



      "




        )
      )


    )





  } else if (theme == "lacoste") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),


      htmltools::tags$script(
        htmltools::HTML(
          "

    bubbly({
    animate: true, // default is true
    blur: 1, // default is 4
    bubbleFunc: () => `hsla(0, 60%, 80%, 1})`, // default is () => `hsla(0, 0%, 100%, ${r() * 0.1})`)
    bubbles: 100, // default is Math.floor((canvas.width + canvas.height) * 0.02);
    canvas: document.querySelector('#background'), // default is created and attached
      colorStart: '#064543', // default is blue-ish
      colorStop: '#097355',// default is blue-ish
      compose: 'lighter', // default is 'lighter'
      shadowColor: '#FF59C3', // default is #fff
      angleFunc: () => Math.random() * Math.PI * 8, // default is this
      velocityFunc: () => 1 + Math.random() * 0.5, // default is this
      radiusFunc: () => 4 + Math.random() * 25 // default is 4 + Math.random() * width / 25
      });



      "




        )
      )


    )
  } else if (theme == "warmup") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),


      htmltools::tags$script(
        htmltools::HTML(
          "

    bubbly({
    animate: true, // default is true
    blur: 1, // default is 4
    bubbleFunc: () => `hsla(${Math.random() * 360}, 100%, 50%, 0.5)`, // default is () => `hsla(0, 0%, 100%, ${r() * 0.1})`)
    bubbles: 100, // default is Math.floor((canvas.width + canvas.height) * 0.02);
    canvas: document.querySelector('#background'), // default is created and attached
      colorStart: '#d4671e', // default is blue-ish
      colorStop: '#f27474',// default is blue-ish
      compose: 'lighter', // default is 'lighter'
      shadowColor: '#FF59C3', // default is #fff
      angleFunc: () => Math.random() * Math.PI * 8, // default is this
      velocityFunc: () => 0.5 + Math.random() * 0.5, // default is this
      radiusFunc: () => 1 + Math.random() * 25 // default is 4 + Math.random() * width / 25
      });



      "




        )
      )


    )



  } else if (theme == "fire") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),

      htmltools::tags$script(
        htmltools::HTML(
          "

    bubbly({
    animate: true, // default is true
    blur: 1, // default is 4
    bubbleFunc: () => `hsla(${Math.random() * 1.232}, 100%, 50%, 0.5)`, // default is () => `hsla(0, 0%, 100%, ${r() * 0.1})`)
    bubbles: 300, // default is Math.floor((canvas.width + canvas.height) * 0.02);
    canvas: document.querySelector('#background'), // default is created and attached
      colorStart: '#f27f59', // default is blue-ish
      colorStop: '#f27f59',// default is blue-ish
      compose: 'lighter', // default is 'lighter'
      shadowColor: '#f27f59', // default is #fff
      angleFunc: () => Math.random() * Math.PI * 8, // default is this
      velocityFunc: () => 0.5 + Math.random() * 0.5, // default is this
      radiusFunc: () => 19 + Math.random() * 25 // default is 4 + Math.random() * width / 25
      });



      "




        )
      )


    )
  } else if (theme == "traffic") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),

      htmltools::tags$script(
        htmltools::HTML(
          "

    bubbly({
    animate: true, // default is true
    blur: 1, // default is 4
    bubbleFunc: () => `hsla(${Math.random() * 1.232}, 100%, 50%, 0.5)`, // default is () => `hsla(0, 0%, 100%, ${r() * 0.1})`)
    bubbles: 100, // default is Math.floor((canvas.width + canvas.height) * 0.02);
    canvas: document.querySelector('#background'), // default is created and attached
      colorStart: '#D79D73', // default is blue-ish
      colorStop: '#514145',// default is blue-ish
      compose: 'lighter', // default is 'lighter'
      shadowColor: '#9E6A4D', // default is #fff
      angleFunc: () => Math.random() * Math.PI * 8, // default is this
      velocityFunc: () => 2 + Math.random() * 0.5, // default is this
      radiusFunc: () => 12 + Math.random() * 10 // default is 4 + Math.random() * width / 25
      });



      "




        )
      )


    )




  } else if (theme == "life") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),


      htmltools::tags$script(
        htmltools::HTML(
          "
  bubbly({
  colorStart: '#a4cc2b',
  colorStop: '#CAB9C4',
  bubbles:299,
  blur:1,
  compose: 'source-over',
  bubbleFunc:() => `hsla(${200 + Math.random() * 10}, 100%, 50%, 1)`,
  angleFunc:() => Math.random() > 0.5 ? Math.PI : 2 * Math.PI,
  velocityFunc:() => 2 + Math.random() * 1,
  radiusFunc:() => Math.random() * 7
    });


      "




        )
      )


    )



  } else if (theme == "darksky") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),


      htmltools::tags$script(
        htmltools::HTML(
          "
  bubbly({
  colorStart: '#272822',
  colorStop: '#272822',
  bubbles:299,
  blur:1,
  compose: 'source-over',
  bubbleFunc:() => `hsla(${200 + Math.random() * 10}, 100%, 50%, 1)`,
  angleFunc:() => Math.random() > 0.5 ? Math.PI : 2 * Math.PI,
  velocityFunc:() => 2 + Math.random() * 1,
  radiusFunc:() => Math.random() * 50
    });


      "




        )
      )


    )



  } else if (theme == "orangina") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),


      htmltools::tags$script(
        htmltools::HTML(
          "
  bubbly({
  colorStart: '#4E5C68',
  colorStop: '#4E5C68',
  bubbles:299,
  blur:1,
  compose: 'source-over',
  bubbleFunc:() => `hsla(${400 + Math.random() * 10}, 100%, 50%, 1)`,
  angleFunc:() => Math.random() > 0.5 ? Math.PI : 2 * Math.PI,
  velocityFunc:() => 2 + Math.random() * 1,
  radiusFunc:() => Math.random() * 50
    });


      "




        )
      )


    )


  } else if (theme == "meteor") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),


      htmltools::tags$script(
        htmltools::HTML(
          "
  bubbly({
  colorStart: '#4E5C68',
  colorStop: '#C54949',
  bubbles:299,
  blur:1,
  compose: 'source-over',
  bubbleFunc:() => `hsla(${400 + Math.random() * 10}, 100%, 50%, 1)`,
  angleFunc:() => Math.random() > 1 ? Math.PI : 3 * Math.PI,
  velocityFunc:() => 4 + Math.random() * 1,
  radiusFunc:() => Math.random() * 20
    });


      "




        )
      )


    )





  } else if (theme == "gravitas") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),


      htmltools::tags$script(
        htmltools::HTML(
          "
  bubbly({
  colorStart: '#F92672',
  colorStop: '#59B6C7',
  bubbles:222,
  blur:1,
  compose: 'source-over',
  bubbleFunc:() => `hsla(${222 + Math.random() * 2}, 100%, 50%, 1)`,
  angleFunc:() => Math.random() > 0.3 ? Math.PI : 1.2 * Math.PI,
  velocityFunc:() => 2 + Math.random() * 1,
  radiusFunc:() => Math.random() * 10
    });


      "




        )
      )


    )




  } else if (theme == "rladies") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),


      htmltools::tags$script(
        htmltools::HTML(
          "


    bubbly({
    animate: true, // default is true
    blur: 1, // default is 4
    bubbleFunc: () => `hsla(${Math.random() * 1.232}, 100%, 50%, 0.5)`, // default is () => `hsla(0, 0%, 100%, ${r() * 0.1})`)
    bubbles: 10, // default is Math.floor((canvas.width + canvas.height) * 0.02);
    canvas: document.querySelector('#background'), // default is created and attached
      colorStart: '#4AA2B9', // default is blue-ish
      colorStop: '#4AA2B9',// default is blue-ish
      compose: 'lighter', // default is 'lighter'
      shadowColor: '#901A10', // default is #fff
      angleFunc: () => Math.random() * Math.PI * 8, // default is this
      velocityFunc: () => 2 + Math.random() * 0.5, // default is this
      radiusFunc: () => 100 + Math.random() * 10 // default is 4 + Math.random() * width / 25
      });

      "




        )
      )


    )



  } else if (theme == "sunshine") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),


      htmltools::tags$script(
        htmltools::HTML(
          "


    bubbly({
    animate: true, // default is true
    blur: 1, // default is 4
    bubbleFunc: () => `hsla(${Math.random() * 200.232}, 100%, 50%, 1)`, // default is () => `hsla(0, 0%, 100%, ${r() * 0.1})`)
    bubbles: 30, // default is Math.floor((canvas.width + canvas.height) * 0.02);
    canvas: document.querySelector('#background'), // default is created and attached
      colorStart: '#FF9800', // default is blue-ish
      colorStop: '#1B1B1B',// default is blue-ish
      compose: 'lighter', // default is 'lighter'
      shadowColor: '#4E5C68', // default is #fff
      angleFunc: () => Math.random() * Math.PI * 2, // default is this
      velocityFunc: () => 2 + Math.random() * 0.5, // default is this
      radiusFunc: () => 20 + Math.random() * 5.5 // default is 4 + Math.random() * width / 25
      });

      "


        )
      )


    )
  } else if (theme == "sweet") {
    htmltools::tagList(
      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),


      htmltools::tags$script(
        htmltools::HTML(
          "


    bubbly({
    animate: true, // default is true
    blur: 1, // default is 4
    bubbleFunc: () => `hsla(${Math.random() * 200.232}, 100%, 50%, 1)`, // default is () => `hsla(0, 0%, 100%, ${r() * 0.1})`)
    bubbles: 20, // default is Math.floor((canvas.width + canvas.height) * 0.02);
    canvas: document.querySelector('#background'), // default is created and attached
      colorStart: '#e63946', // default is blue-ish
      colorStop: '#8d99ae',// default is blue-ish
      compose: 'lighter', // default is 'lighter'
      shadowColor: '#4E5C68', // default is #fff
      angleFunc: () => Math.random() * Math.PI * 2, // default is this
      velocityFunc: () => 2 + Math.random() * 0.5, // default is this
      radiusFunc: () => 20 + Math.random() * 5.5 // default is 4 + Math.random() * width / 25
      });

      "




        )
      )


    )





  } else if (theme == "lalaland"){

    htmltools::tagList(

      htmltools::tags$script(src = "https://cdn.jsdelivr.net/npm/bubbly-bg@1.0.0/dist/bubbly-bg.js"),

      htmltools::tags$style(htmltools::HTML(glue::glue("body{{color:{color}}}"))),


      htmltools::tags$script(
        htmltools::HTML(
          "
  bubbly({
  colorStart: '#0A0C12',
  colorStop: '#0B0E15',
  bubbles:100,
  blur:0,
  compose: 'source-over',
  bubbleFunc:() => `hsla(${0 + Math.random() * 10}, 100%, 100%, 1)`,
  velocityFunc:() => 0.05 + Math.random() * 0.05,
  radiusFunc:() => Math.random() * 1.2
    });


      "




        )
      )


    )


  }



















}
