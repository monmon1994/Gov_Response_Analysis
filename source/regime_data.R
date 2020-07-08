library(tidyverse)
library(wbstats)
library(countrycode)
library(tidycovid19)
library(xlsx)

### Freedom House

fh <- readxl::read_excel("data/FH_new.xlsx")

fh$iso3c <- countrycode::countrycode(fh$country, "country.name", "iso3c")

write.xlsx(fh, "data/fh_iso.xlsx", sheetName = "Sheet1", 
           col.names = TRUE, row.names = TRUE, append = FALSE)

fh_20 <- fh %>% 
    filter(year == 2020)

