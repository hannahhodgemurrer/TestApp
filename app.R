library(shiny)

ui <- fluidPage(
  titlePanel("Simple Shiny App"),

  sidebarLayout(
    sidebarPanel(
      sliderInput(
        inputId = "num",
        label = "Choose a number:",
        min = 1,
        max = 100,
        value = 50
      )
    ),

    mainPanel(
      h3("Output"),
      textOutput("result")
    )
  )
)

server <- function(input, output, session) {

  output$result <- renderText({
    paste("You selected:", input$num)
  })

}

shinyApp(ui = ui, server = server)
