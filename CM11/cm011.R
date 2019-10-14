# Qi Yang
# This file is done by following instructions of Guide: Class meeting 11

# loading packages
library(tidyverse)
library(gapminder)
library(here)
library(readxl) 

# Write data to disk using here::here
gap_asia_2007 <- gapminder %>% 
  filter(year == 2007, continent == "Asia")
gap_asia_2007
write_csv(gap_asia_2007,here::here("CM11", "data","cm011_data","exported_file.csv"))

# Read data from disk
read_csv(here::here("CM11", "data","cm011_data","exported_file.csv"))

# Import a csv file from the internet
url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/magazines.csv"
read_csv(url)

# Import an excel file from the internet 
xls_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"
file_name <- basename(xls_url)
download.file(xls_url,here::here("CM11", "data","cm011_data",file_name))
read_excel(file_name) # why is there an error? 

# Read in a sample excel file
mri_file = here::here("CM11", "data","cm011_data","Firas-MRI.xlsx")
mri <- read_excel(mri_file, range = "A1:K12") # why do we change from K12 to L12? Do we need to add the clean excel here?
mri <- read_excel(mri_file, range = "A1:L12")
view(mri) # view data
mri <- mri[,-10] # remove weighted averages
mri <- mri %>% 
  pivot_longer(cols = `Slice 1`:`Slice 8`, # make data tidy
               names_to = "slice_no",
               values_to = "values")
