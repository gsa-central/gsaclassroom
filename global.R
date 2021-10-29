library(shiny)
library(shinythemes)
library(DT)
library(hms)
library(reshape2)
library(readr)
library(readxl)

## read videodata into R
file = "data/videos.xlsx"

## openxlsx::read.xlsx(file,1, startRow=5)
vdata <- readxl::read_excel(file, sheet = 1, range = "A1:G78")



