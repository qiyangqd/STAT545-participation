library("tidyverse")

# read gapminder_sum as gapminder_csv
gapminder_csv <- read.csv('./gapminder_sum.csv')

# remove variables but not packages
view(gapminder_csv)
remove(list = ls())
ls() # will see ls() as "character(0)

# read gapminder_sum
read.csv('./gapminder_sum.csv')

# another way using here
# platform agnostic, dir-structure agnostic
write.csv(here::here("./gapminder_sum.csv"))

# we can also
set_here("")

library(tidyverse)
library(here)

# read excel file
data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"

# read.csv can directly import urls but read.excel requires downloading first
# This is the old way
download.file(url = data_url, 
              destfile = paste('./datasets/', file_name))

# task: 
download.file(url = data_url, 
              destfile = here::here("test", " GreatestGivers.xls"))

# recommendation: use basename
file_name <- basename(data_url) # get the file name from a url


library(readxl)
philanthropists <- read_excel(here::here("test", file_name), trim_ws = TRUE)
view(philanthropists)

# find a way to remove leading white-space from column4

mri_file = here("test", "Firas-MRI.xlsx")

mri <- read_excel(mri_file, range = "A1:L12")
view(mri)

mri <- mri[,-10]

mri <- mri %>% 
  pivot_longer(cols = `Slice 1`:`Slice 8`,
                 names_to = "slice_no",
                 values_to = "values")
