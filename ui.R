library(shiny)

# Define UI for application print "Hello world" 
shinyUI(
  
  # Create bootstrap page 
  fluidPage(
    
    # Paragraph "Hello world"
    p("Hello world. This is on the test-branch. Also testing to see if the PR works on github actions."),
    
    # Create button to print "Hello world" from server
    actionButton(inputId = "Print_Hello", label = "Print_Hello World"),
    
    # Create position for server side text
    textOutput("Server_Hello")
    
  )
)