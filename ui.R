library(shiny)
shinyUI(fluidPage(
  titlePanel("Mtcars Data Visualization"),
  sidebarPanel(
    selectInput('yvar', 'Dependent Variable', names(mtcars)),
    selectInput('xvar', 'Independent Variable', names(mtcars),
                selected=names(mtcars)[[2]]),
    checkboxInput("show_smooth", "Show/Hide Trend Line", value = FALSE)
  ),
  mainPanel(
    plotOutput('plot1')
  )
)
)

