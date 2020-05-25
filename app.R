#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui<-fluidPage(
    navbarPage("Home",
                     tabPanel("Search"),
                     tabPanel("Blast"),
                     navbarMenu("Menu",
                                tabPanel("SNP1"),
                                tabPanel("SNP2"))
    ),
    titlePanel("SNP Annotation"),
    sidebarLayout(
        
        mainPanel(
            h1("Functional zone"),
            selectInput("select", h3("Select box"),
                        choices = list("Chinese_Spring" = 1, "Triticum urartu" = 2,
                                       "Chinese Sping(IWWGSC Refseq v1.0)" = 3), selected = 3),
            textInput("Query",h3(em("Paste your Query")),value ="Enter your Query to receive the results!"),
            fileInput("file-query",h3("Upload VCF File")),
            actionButton("action", "Action")
           
        
    ),
    sidebarPanel(
        
        textInput("Email",h3("Email"),value = "Enter your Email to receive the results!")
    )
    ))
    
   

# Define server logic required to draw a histogram
 server <- function(input, output) {

    observeEvent(input$action,{
        showModal(modalDialog(
            title = "suscess",
            "sdhjafvasujyhdfgvbyhasujgbfdyhujsa!",
            easyClose = T
        ))
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
