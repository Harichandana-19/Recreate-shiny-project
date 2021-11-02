#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
covid <- read.csv("D:/R/Practice 3/EuropeIndia.csv")

# Define UI for application 
ui <- fluidPage(
  
  # Application title
  titlePanel("Deaths vs all variables "),
  
  # Sidebar 
  sidebarLayout(
    sidebarPanel(
      selectInput("location", "Select a country",
                  choices = covid$locaation)  ),
    mainPanel(
      tabsetPanel(
               type = "tabs",
                  tabPanel("cases",plotOutput("plot1t"), plotOutput("plot1n")),
                  tabPanel("vaccinations",plotOutput("plot2t"), plotOutput("plot2n")),
                  tabPanel("people",plotOutput("plot3t"),plotOutput("plot3n")),
                  tabPanel("full vaccination",plotOutput("plot4t"), plotOutput("plot4n")),
                  tabPanel("boosters",plotOutput("plot5t"), plotOutput("plot5n")),
                  tabPanel("new vaccination",plotOutput("plot6t"),plotOutput("plot6n")),
                  tabPanel("median age",plotOutput("plot7t"),plotOutput("plot7n")),
                  tabPanel("new cases",plotOutput("plot8t"), plotOutput("plot8n")),
                  tabPanel("summary", verbatimTextOutput("summary")),
                  tabPanel("dataset", tableOutput("dataset"))
      )
    )
  )
)