# The 'prediction' function
diabetesRisk <- function(glucose) glucose / 200

# Define server logic required to generate and plot a random distribution
shinyServer(
    function(input, output) {
        output$inputValue <- renderPrint({input$glucose})        
        output$prediction <- renderPrint({ diabetesRisk(input$glucose)})
    }
)
