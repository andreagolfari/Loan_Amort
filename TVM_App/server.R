#
# 
#
# 
# 
# 
#

library(shiny); library(FinancialMath)

# 
shinyServer(function(input, output) {
        output$Table <- renderTable({
                amort.table(Loan = input$PV,
                            n = input$Years * as.integer(input$PF),
                            pmt = NA,
                            i = input$i / 100, 
                            ic = input$IC, 
                            pf = as.integer(input$PF),
                            plot=FALSE)$Schedule},
                
                rownames = TRUE,
                striped = TRUE,
                bordered = TRUE
        )
        
        output$Plot <- renderPlot({
                amort.table(Loan = input$PV,
                            n = input$Years * as.integer(input$PF),
                            pmt = NA,
                            i = input$i / 100, 
                            ic = input$IC, 
                            pf = as.integer(input$PF), 
                            plot=TRUE)
        })
        
        output$Summary <- renderTable({
                amort.table(Loan = input$PV,
                            n = input$Years * as.integer(input$PF),
                            pmt = NA,
                            i = input$i / 100, 
                            ic = input$IC, 
                            pf = as.integer(input$PF),
                            plot=FALSE)$Other},
                
                rownames = TRUE,
                striped = TRUE,
                bordered = TRUE)
        
})





