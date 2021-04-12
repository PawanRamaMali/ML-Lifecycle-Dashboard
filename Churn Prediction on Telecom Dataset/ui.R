###################
# ui.R
# 

library(shinydashboard)

source('./functions.R')
source('./components/header.R')
source('./components/sidebar.R')
source('./components/body.R')


ui <- dashboardPage(
  header = header,
  sidebar =  sidebar,
  body = body)
