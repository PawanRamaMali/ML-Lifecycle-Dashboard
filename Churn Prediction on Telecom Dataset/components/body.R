# body.R

body <- dashboardBody(
  
  tags$head(
    tags$link(rel = "stylesheet", 
              type = "text/css", 
              href = "dark_mode.css")
  ),
  
  tabItems( 
  # # Dashboard Tab ----

  # Correlation Tab ----
  
  
  tabItem(tabName = "tab_business_context",
          fluidPage(
            title = "Business Context",
            mainPanel(
              
              
              shinyWidgets::panel(heading = 'Business Context',
                                  status = 'primary',
                                  
                                  tabsetPanel(
                                    tabPanel(
                                      title = h5('Business Understanding'),
                                      textAreaInput(
                                         width = '950px',
                                         height = '250px',
                                        inputId = 'main_description',
                                        label = '',
                                        value = 'Customer churn analysis refers to the customer attrition rate in a company. Churn rate (sometimes called attrition rate), in its broadest sense, is a measure of the number of individuals or items moving out of a collective group over a specific period.'
                                      )
                                    ),
                                    tabPanel(
                                      title = h5('Background'),
                                      textAreaInput(
                                        # width = '950px',
                                        # height = '250px',
                                        inputId = 'main_description',
                                        label = '',
                                        value = ''
                                      )
                                      ),
                                      tabPanel(
                                        title = h5('Data Understanding'),
                                        textAreaInput(
                                          # width = '950px',
                                          # height = '250px',
                                          inputId = 'main_description',
                                          label = '',
                                          value = ''
                                        )
                                      ),
                                      tabPanel(
                                        title = h5('Expectation'),
                                        textAreaInput(
                                          # width = '950px',
                                          # height = '250px',
                                          inputId = 'main_description',
                                          label = '',
                                          value = ''                                        )
                                      )
                                    
                                    
                                  ))
            )
          )),
  
  
  
  
  
  # Data Selection Tab ----
  
  
  tabItem(
    tabName = "tab_data_selection",
    fluidPage(
      shinyWidgets::panel(
        heading = 'Explore a Dataset',
        status = 'primary',
        
        tabsetPanel(
          tabPanel(
            title = h5("Data Connection"),
            shiny::selectInput(
              inputId = "dataset_choice",
              label   = " ",
              choices = c("Telco Data")
            ),
          ),
          tabPanel(title = h5("View Data"),
                   dataTableOutput("show_data")
          )) 
      ))),
      
 
  # Correlation Tab ----
  
  
  tabItem(tabName = "tab_correlation",
          fluidPage(
            shinyWidgets::panel(
              heading = 'Correlation Plot',
              status = 'primary',
              
              tabsetPanel(tabPanel(
                title = h5("Plot"),
                plotlyOutput("corrplot", height = 700)
              ))
            )
            
          )), 
  
  
  
  
  # Settings Tab ----
  
  
  tabItem(tabName = "tab_app_settings",
          fluidPage(
            title = "Settings",
            
            mainPanel(
              h1("Custom Settings"),
              hr(),
              checkboxInput("show_rownames",
                            label = "Show row numbers in data table"),
              checkboxInput("show_features_responsive",
                            label = "Responsive Layout for data table")
              
            )
            
            
            
          )),
  
  
  # About Me Tab ----
  
  
  tabItem(tabName = "tab_about_me",
          fluidPage(sidebarPanel(
            width = 3,
            h2("About Me"),
         
            hr(),
            h5(" I am Pawan Rama Mali"),
            h6(" I'm currently working on Software Development"),
            h6(" Also, I'm currently learning Artificial Intelligence"),
            h5(
              tags$a(href = "https://www.github.com/PawanRamaMali", "GitHub Link")
            ),
            h5(
              tags$a(href = "https://pawanramamali.github.io/", "Website Link")
            )
          )))
  
  
  
))