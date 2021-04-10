# body.R

body <- dashboardBody(tabItems( 
  # # Dashboard Tab ----

  # Correlation Tab ----
  
  
  tabItem(tabName = "tab_business_context",
          fluidPage(
            title = "Business Context",
            mainPanel(
              textInput(inputId ='text_business_context',
                        label = "Business Context"),
              br(),
              textInput(inputId ='text_business_background',
                        label = "Background"),
              br(),
              textInput(inputId ='text_business_data',
                        label = "Data"),
              br(),
              textInput(inputId ='text_business_expectation',
                        label = "Expectation")
            )
          )),
  
  
  
  
  
  # Data Selection Tab ----
  
  
  tabItem(tabName = "tab_data_selection",
          fluidPage(
            sidebarLayout(
              sidebarPanel(
                width = 3,
                h1("Explore a Dataset"),
                
                shiny::selectInput(
                  inputId = "dataset_choice",
                  label   = "Data Connection",
                  choices = c("Telco Data","StackOverflow", "Car Prices", "Sacramento Housing")
                ),
                
                hr()
 
              ),
              
           
              mainPanel(dataTableOutput("show_data"))
            )
          )),
  
 
  # Correlation Tab ----
  
  
  tabItem(tabName = "tab_correlation",
          fluidPage(
            title = "Correlation Plot",
            mainPanel(
              plotlyOutput("corrplot", height = 700)
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