library(ggplot2)

function(input, output) {
  
  # Combine the selected variables into a new data frame
  selectedData <- reactive({
    mtcars[, c(input$xvar, input$yvar)]
  })

  output$plot1 <- renderPlot({
    p <- ggplot(selectedData(), aes_string(x=input$xvar, y=input$yvar)) + geom_point() 
    print(p)
    
    if (input$show_smooth)
    {p <- p + geom_smooth()
    print(p)
    }
  })
}