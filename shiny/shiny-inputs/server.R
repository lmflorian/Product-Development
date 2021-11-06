
library(shiny)

shinyServer(function(input, output) {
  
  output$sliter_out_florian <- renderPrint({
    input$sliderFlorian 
  })
  
  output$multi_slider <- renderPrint({
    input$sliterMultiple
  })
  
  output$numeric_output <- renderPrint({
    input$num_in
  })
  
  output$fecha_output <- renderPrint({
    input$single_date
  })
  
  output$fecharango_output <- renderPrint({
    input$range_date
  })
  
  output$SingleCheck <- renderPrint({
    input$single_chk
  })
  
  output$Multicheck <- renderPrint({
    input$multi_chk
  })
  
  output$radio <- renderPrint({
    input$radio_in
  })
  
  output$actionButton <- renderPrint({
    input$actionButton
  })
  
  output$actionLink <- renderPrint({
    input$actionSalir
  })

})
