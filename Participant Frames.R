library(jsonlite)
library(httr)
library(tidyverse)
library(anytime)

APIkey <- "#####"


jayurl2 <- paste0("https://na1.api.riotgames.com/lol/match/v4/timelines/by-match/3434990668?api_key=", APIkey)
jayriot2 <- httr::GET(jayurl)

str(jayriot2)
str(jayriot2$content)
jaycontent2 <- httr::content(jayriot2, as = "text")
str(jaycontent2)
jaycontentjson2 <- jsonlite::fromJSON(jaycontent2)
dplyr::glimpse(jaycontentjson2)
jaycontentjson2$matches
df4 <- data_frame(jaycontentjson2$frames$participantFrames)
ddf5 <- df$`jaycontentjson2$frames`
glimpse(df4)
