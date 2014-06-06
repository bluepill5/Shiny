# Define UI for application that plots random distributions
shinyUI(
    pageWithSidebar( 
        # Application title
        headerPanel("Diabetes Prediction"),
        
        sidebarPanel(
            # Nmeric input with default value of 90
            numericInput('glucose', 'Glucose mg/dl', 90, 
                         min = 50, max = 200, step = 5),
            submitButton('Submit')
            
        ),
        # Show a plot of the generated distribution
        mainPanel(
            h3('Results of prediction'),
            h4('You entered'),
            verbatimTextOutput("inputValue"),
            h4('Which resulted in a prediction of '),
            verbatimTextOutput("prediction")
        )
    ))


