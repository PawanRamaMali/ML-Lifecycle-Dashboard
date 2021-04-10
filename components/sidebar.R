###################
# sidebar.R
# 
# Create the sidebar menu options for the ui.
###################
sidebar <- dashboardSidebar(
  sidebarMenu(

   # menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
    
    menuItem("Business Context", tabName = "tab_business_context", icon = icon("pen-fancy")),
    
    
    menuItem("Data Selection", tabName = "tab_data_selection", icon = icon("table")),
   
   
    menuItem("Correlation", tabName = "tab_correlation", icon = icon("project-diagram")),
    menuItem("App Settings", tabName = "tab_app_settings", icon = icon("cog")),
    menuItem("About Me", tabName = "tab_about_me", icon = icon("user"))
    
  )
)
