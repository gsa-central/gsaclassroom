shinyUI(fluidPage(
    tags$div(
      div(img(src="GSACENTRAL_Logo.png", width = "100px", height = "50px"),
              style = "padding-left:5px;"),
      class = "text-center",
      span(strong(h2("GSA Classroom Videos")),
           style = "color:steelblue")),
    tags$hr(),
    fluidRow(DT::dataTableOutput("DT1")),
    tags$hr(),
    tags$div(
      div(img(src="GSACENTRAL_Logo.png", width = "100px", height = "50px"),
              style = "padding-left:5px;"),
      class = "text-center",
      span(strong(h4("Last updated: October 15th, 2021")),
           style = "color:gray"))
))
