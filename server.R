shinyServer(function(input, output, session){
  
  options(shiny.maxRequestSize=100*1024^2)
  
  source("global.R")
  data <- reactive(vdata)

  output$DT1 <- DT::renderDataTable(
    DT::datatable(data(),
                  rownames = FALSE,
                  selection = "none",
                  options = list(autoFill = TRUE,
                                 searchHighlight = TRUE,
                                 paging = TRUE,
                                 dom = 'Blftsip',
                                 buttons = list(list(extend = "collection",
                                                     buttons = list(list(extend='csv',
                                                                         filename = 'GSA-related videos'),
                                                                    list(extend = 'excel',
                                                                         filename = 'GSA-related videos')),
                                                     text = "Download")),
                                 lengthMenu = list(c(25, 50, -1),
                                                   c(25, 50, "All") 
                                 )
          )))
})

