# server.R

server <- function(input, output, session) {
  
  # Data Selection Tab ---- 
  # 
  
  rv <- reactiveValues()
  
  observe({
    
    if(input$show_features_responsive){
      features <-  c("Responsive")
    }
    else
      features <-  c("FixedHeader")
    
    rv$data_set <- data_list %>% pluck(input$dataset_choice)
    output$show_data <- renderDataTable({
      rv$data_set %>%
        datatable(rownames = input$show_rownames,
                  options = list(scrollX = TRUE),
                  extensions = features)
    })
    
  })
  
  
 
  
  # Correlation Tab ----
  # 
  
  output$corrplot <- renderPlotly({
    
    g <- DataExplorer::plot_correlation(rv$data_set)
    
    plotly::ggplotly(g)
  })
  
  

  
}
