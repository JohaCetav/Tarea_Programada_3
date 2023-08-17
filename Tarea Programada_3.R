library(shiny)

ui <- fluidPage(
  titlePanel("Planificador de eventos"),
  
  sidebarLayout(
    sidebarPanel( 
      width = 5,
      br(),
      textInput(inputId = "nombre", 
                label = "Nombre del evento:"),
      br(),
      selectInput(inputId = "tema",    
                  label = "Tema del evento:", 
                  choices = c("Boda", "Fiesta de Cumpleaños", "Conferencia", "Otro"),
                  multiple = FALSE),
      
      numericInput(inputId = "invitados",
                   label = "Número de invitados:", 
                   value = 58, 
                   min = 25,
                   max = 120),
      
      selectInput(inputId = "provincia",
                  label = "Seleccione la provincia en la que vive:",
                  choices = c("San José", "Heredia", "Cartago", "Limón", "Puntarenas", "Alajuela", "Guanacaste"),
                  multiple = FALSE)
      
    ), 
    mainPanel(
      width = 7,
      br(),
      br(),
      h3(div("¡Vamos a planificar su día especial!", style = "color:blue", align = "center")),
      tags$hr(style = "border-color:blue;"), 
      textOutput("evento_output"), 
      br(),
      tags$hr(),
      textOutput("tema_output"),
      br(),
      tags$hr(),
      textOutput("invitados_provincia_output")
    )
  )
)
