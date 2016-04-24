

library(shiny)
shinyUI(fluidPage(
  textInput("text", label = h2("Enter Your Words"), value = "Go on a romantic date at the"),
  submitButton(text = "Predict next word..."),
  hr(),
  fluidRow((verbatimTextOutput("value")))
  
))