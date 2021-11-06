
library(shiny)
library(lubridate)

shinyUI(fluidPage(
   
    titlePanel("My Shiny App"),
    sidebarLayout(
      sidebarPanel(
        sliderInput("sliderFlorian","Seleccione un valor",
                    min=0, 
                    max=100, 
                    value=50,  #value es el número donde empieza
                    step = 10, #10 en 10.
                    post = '%',
                    animate = animationOptions(interval = 100, loop=TRUE)
                    ),
        sliderInput("sliterMultiple","Seleccione un rango",
                    min = -10,
                    max = 10,
                    value = c(-5,5)
                    ),
        numericInput("num_in","Ingrese un número",
                     min = 0,
                     max = 50,
                     value = 25
                     ),
        dateInput("single_date", "Fecha de cumpleaños",
                  value = today(),
                  language = 'es',
                  weekstart = 1,
                  format = 'dd/mm/yyyy'
                  ),
        dateRangeInput("range_date", "Selecione rango de fechas",
                       max = today(),
                       min = today() - 365,
                       start = today() - 7,
                       end = today(),
                       language = 'es',
                       format = 'dd/mm/yyyy',
                       weekstart = 1,
                       separator = 'a'
                       ),
        checkboxInput("single_chk", "Mostrar", value = TRUE),
        checkboxGroupInput("multi_chk", "Seleccione nivel",
                           choices = 1:5, selected = 1),
        radioButtons("radio_in", "Seleccione Género",
                     choices = c("Masculino","Femenino", "Otro"),
                     selected = "Femenino"),
        actionButton("actionButton", "Refresh"),
        br(), #espacio
        actionLink("actionSalir", "Salir"),
        submitButton("Ejecutar")  #Se aplican los cambios al click.
                    
      ),
      mainPanel(
        h1("Salidas de los inputs de Shiny"),
        h2("Slider IO"),
        verbatimTextOutput("sliter_out_florian"),
        h2("Slider Multiple IO"),
        verbatimTextOutput("multi_slider"),
        h2("Numeric Input"),
        verbatimTextOutput("numeric_output"),
        h2("Fecha"),
        verbatimTextOutput("fecha_output"),
        h2("Rango de Fechas"),
        verbatimTextOutput("fecharango_output"),
        h2("Single Check"),
        verbatimTextOutput("SingleCheck"),
        h2("Multi check"),
        verbatimTextOutput("Multicheck"),
        h2("RadioButtons"),
        verbatimTextOutput("radio"),
        h2("ActionButtons"),
        verbatimTextOutput("actionButton"),
        h2("ActionLink"),
        verbatimTextOutput("actionLink")
      )
    )
))
