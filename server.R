
library(shiny)
library(tidyverse)
covid <- read.csv("D:/R/Practice 3/EuropeIndia.csv")

# Define UI for application that draws a histogram
# Define server logic required to draw a histogram
server <- function(input, output) {
 
 
 output$plot1t <- renderPlot({
      ggplot(covid,aes(y=total_deaths,x=total_cases))+geom_point()
    
  })
  output$plot1n <- renderPlot({
    ggplot(covid,aes(y=new_deaths,x=total_cases))+geom_point()
    
  })
  output$plot2t <- renderPlot({
    ggplot(covid,aes(y=total_deaths,x=total_vaccinations))+geom_point()
    
  })
  output$plot2n <- renderPlot({
    ggplot(covid,aes(y=new_deaths,x=total_vaccinations))+geom_point()
    
  })
  output$plot3t <- renderPlot({
    ggplot(covid,aes(y=total_deaths,x=people_vaccinated))+geom_point()
    
  })
  output$plot3n <- renderPlot({
    ggplot(covid,aes(y=new_deaths,x=people_vaccinated))+geom_point()
    
  })
  output$plot4t <- renderPlot({
    ggplot(covid,aes(y=total_deaths,x=people_fully_vaccinated))+geom_point()
    
  })
  output$plot4n <- renderPlot({
    ggplot(covid,aes(y=new_deaths,x=people_fully_vaccinated))+geom_point()
    
  })
  output$plot5t <- renderPlot({
    ggplot(covid,aes(y=total_deaths,x=total_boosters))+geom_point()
    
  })
  output$plot5n <- renderPlot({
    ggplot(covid,aes(y=new_deaths,x=total_boosters))+geom_point()
    
  })
  output$plot6t <- renderPlot({
    ggplot(covid,aes(y=total_deaths,x=new_vaccinations))+geom_point()
    
  })
  output$plot6n <- renderPlot({
    ggplot(covid,aes(y=new_deaths,x=new_vaccinations))+geom_point()
    
  })
  output$plot7t <- renderPlot({
    ggplot(covid,aes(y=total_deaths,x=median_age))+geom_point()
    
  })
  output$plot7n <- renderPlot({
    ggplot(covid,aes(y=new_deaths,x=median_age))+geom_point()
    
  })
  output$plot8t <- renderPlot({
    ggplot(covid,aes(y=total_deaths,x=new_cases))+geom_point()
    
  })
  output$plot8n <- renderPlot({
    ggplot(covid,aes(y=new_deaths,x=new_cases))+geom_point()
    
  })
  output$summary <- renderPrint({
    summary(covid)
  })
  output$dataset <- renderTable({
    covid
  })
}