shinyUI(fluidPage(
  titlePanel("Predicting the Next Word"),

  fluidRow(
    column(12,
           br(),
           h4("This application tries to predict the next word in a phrase."),
           br(),
           h4("To run the application, type a phrase in the box below."),
           br(),
           h4("Beneath the input box, you will see reflected what you entered along with a suggested"),
           h4("completion of the word you are currently typing."),
           br(),
           h4("Below that, you will see the predicted next word of your phrase."),
           br(),
           br()
    )
  ),
  
  fluidRow(
    column(6,
           textInput("input_str", 
                     label = "Enter text:", 
                     value = " "
           )             
    )    
  ),
  
  fluidRow(
    column(12,
           br(),
           br(),
           br(),
           br(),
           h4("You entered:", style = "color:red;"), 
           verbatimTextOutput("text1")             
    )
  ),
  
  fluidRow(
    column(12,
           br(),
           br(),
           h4("Predicted next word:", style = "color:blue"), 
           verbatimTextOutput("text2")            
    )
  )
))



shinyServer(
  function(input, output) {
    output$text1 <- renderText({
      paste(filter_text(get_word(input$input_str)))
    })
    output$text2 <- renderText({
      paste(filter_text(get_pred(input$input_str)))
    })
  }
)
