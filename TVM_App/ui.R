#
# User Interface File for Shiny App
# calculating the amortization schedule 
# of a loan
#
#

library(shiny)

shinyUI(fluidPage(
        
        # Application title
        titlePanel("Loan Amortization Schedule Calculator"),
        
        # Sidebar 
        
        sidebarLayout(
                sidebarPanel(
                        numericInput("PV", h3("Loan Amount"), value = 100000),
                        sliderInput("i", "Interest Rate (percent)", min = 0, max = 25, value = 5, step = 0.5),
                        sliderInput("Years", "Number of Years:", min = 1, max = 30, value = 15),
                        selectInput("PF", "Payment Frequency", 
                                    choices = list("Yearly" = 1, 
                                                   "Semiannual" = 2,
                                                   "Quarterly" = 4,
                                                   "Monthly" = 12), selected = 2),
                        
                        sliderInput("IC", "Interest Compounding Periods per Year", min = 1, max = 12, value = 1),
                        p("Instructions:"),
                        p("Select the desired parameters in the sidebar, 
                          the application will calculate the complete amortization schedule."),
                        p("Select the output via the tab selector at the top of the main window, to toggle between
                          amortization schedule, a plot of the percentage of payment going toward interest and a summary
                          table presenting the effective annual rate")
                ),
                
                # Main Panel 
                
                mainPanel(
                        tabsetPanel(
                                tabPanel('Table', tableOutput("Table")),
                                tabPanel('Plot', plotOutput('Plot')),
                                tabPanel('Summary', tableOutput('Summary'))
                        )
                )
        )
))
