# Define server logic required to print "Hello World" when button is clicked
shinyServer(function(input, output) {
  
  # Create action when actionButton is clicked
  observeEvent(input$Print_Hello,{
    
    # Change text of Server_Hello
    output$Server_Hello = renderText("Hello world from server side")
  })
  
  
})