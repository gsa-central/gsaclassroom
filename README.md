# GSA classroom
(GSA Educational material)<br><br>

GSA Classroom is a repository of slides, videos, and animations, to learn Gene Set Analysis.<br>

## 1. Install required packages:
```
##############################################################################
# Copy and paste the following code to R in order to install all required dependencies:
##############################################################################

if (!requireNamespace("BiocManager", quietly = TRUE))
	install.packages("BiocManager", dependencies = TRUE)
	
requiredPackages <- c("shiny", "shinythemes", "DT", "hms", "reshape2","readr", "readxl", 
                      "tidyverse", "ggpubr", "xfun")

newPackages <- requiredPackages[!(requiredPackages %in% installed.packages()[,"Package"])]
if(length(newPackages)) BiocManager::install(newPackages, ask = TRUE)
```

## 2. Run the app:
```
##############################################################################
# Copy and paste the following code to R in order to run GSARefDB:
##############################################################################

library(shiny)
shiny::runGitHub('gsaclassroom', 'gsa-central')
```

*Last updated: Oct.19th, 2021*
