library(shiny)

shinyUI(fluidPage(
  titlePanel("Uploading Files"),
  sidebarLayout(
    sidebarPanel(
      fileInput('file1', 'Upload raw genome file (.txt)',
                accept=c('text/csv', 
                         'text/comma-separated-values,text/plain', 
                         '.csv'))
      
     
     
      
    ),
    mainPanel(
      verbatimTextOutput("contents")
    )
  )
))