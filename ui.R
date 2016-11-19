library(shiny)
library(DT)

fluidPage(
  titlePanel("ICER Calculator"),
  sidebarLayout(
    sidebarPanel(
      fileInput('CE_data', 'Choose CSV File',
                accept=c('text/csv', 
                         'text/comma-separated-values,
                         text/plain', 
                         '.csv'))
    ),
    mainPanel(
      tabsetPanel(id="tabset",
        tabPanel("ICERs", dataTableOutput("icer_table")),
        tabPanel("Cost-effectiveness Plane", plotOutput("icer_plot"))
      )
    )
  )
)