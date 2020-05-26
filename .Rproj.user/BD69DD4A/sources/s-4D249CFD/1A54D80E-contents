library(jsonlite)
library(httr)
library(tidyverse)
library(anytime)

APIkey <- "RGAPI-db2e941a-d013-4998-97bf-32e719c094ad"


jayurl <- paste0("https://na1.api.riotgames.com/lol/match/v4/matchlists/by-account/kwAjAUDcRAwrOfYy4eZv86wT8obYJhU23LwXAobfugrnefE?queue=420&season=13&api_key=", APIkey)
jayriot <- httr::GET(jayurl)

str(jayriot)
str(jayriot$content)
jaycontent <- httr::content(jayriot, as = "text")
str(jaycontent)
jaycontentjson <- jsonlite::fromJSON(jaycontent)
dplyr::glimpse(jaycontentjson)
jaycontentjson$matches
df <- data_frame(jaycontentjson$matches)
df2 <- df$`jaycontentjson$matches`
glimpse(df)


df3 <-df2 %>%
  mutate(newtimestamp = anytime(timestamp/1000)) 
  
jayurl2 <- paste0("https://na1.api.riotgames.com/lol/match/v4/timelines/by-match/3434990668?api_key=", APIkey)
