library(UsingR)
data(galton)

# Define server logic required to generate and plot a random distribution
shinyServer(
    function(input, output) {
        output$newHist <- renderPlot({
            hist(galton$child, xlab = 'child height', main = 'Histogram', 
                 col = 'lightblue')
            mu <- input$mu
            lines(c(mu, mu), c(0, 200), col = 'red', lwd = 5)
            mse <- mean((galton$child - mu)**2)
            text(63, 150, paste("mu = ", mu))
            text(63, 140, paste("mse = ", round(mse, 2)))
        })
    }
)