shinyUI(fluidPage(
  titlePanel("Predicting the Next Word"),
  fluidRow(
    column(6,
           textInput("inputString", 
                     label = "Pleases enter some text here:", 
                     value = " "
           )             
    )    
  ),
  
  fluidRow(
    column(12,
           h4("You have entered:"), 
           verbatimTextOutput("text2")             
    )
  ),
  
  fluidRow(
    column(12,
           br(),
           h4("The predicted next word:", style = "color:blue"), 
           verbatimTextOutput("text1")            
    )
  )
))