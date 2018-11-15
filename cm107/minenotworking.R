#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)


bcl <- read.csv("./cm107/bcl/bcl-data.csv", stringsAsFactors = FALSE)


# Define UI for application that draws a histogram
ui <- fluidPage(
  titlePanel("BC Liquor price app", 
             windowTitle = "BCL app"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("priceInput", "Select your desired price range.",
                  min = 0, max = 100, value = c(15, 30), pre="$")
    ),
    mainPanel(
      plotOutput("price_hist"),
      tableOutput("bcl_data")
    )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  output$price_hist <- renderPlot({
    bcl %>% 
      filter  (Price < input$priceInput[2],
               Price > input$priceInput[1]) %>% 
      ggplot(aes(Price)) +
      geom_histogram()
  })
  output$bcl_data <- renderTable(bcl)
  
}

# Run the application 
shinyApp(ui = ui, server = server)

