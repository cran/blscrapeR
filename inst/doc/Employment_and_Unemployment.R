## ----setup, include=TRUE-------------------------------------------------

## ----eval=FALSE----------------------------------------------------------
#  # U3 Unemployment vs. U6 Unemployment
#  # More information on unemployment rates here:
#  # http://www.bls.gov/news.release/empsit.t15.htm
#  library(blscrapeR)
#  library(ggplot2)
#  library(tidyr)
#  df <- bls_api(c("LNS13327709", "LNS14000000"), startyear = 2000, endyear = 2015) %>%
#      spread(seriesID, value) %>%
#      dateCast()
#  
#  tail(df)
#  
#  ggplot(data = df, aes(x = date)) +
#      geom_line(aes(y = LNS14000000, color = "U-3")) +
#      geom_line(aes(y = LNS13327709, color = "U-6")) +
#      labs(title = "US Unemployment") + ylab("Unemployment Rate")

## ----eval=FALSE----------------------------------------------------------
#  library(blscrapeR)
#  library(ggplot2)
#  library(tidyr)
#  df <- bls_api(c("LEU0254530800", "LEU0254530600"), startyear = 2000, endyear = 2015) %>%
#      spread(seriesID, value) %>%
#      dateCast()
#  
#  tail(df)
#  
#  ggplot(data = df, aes(x = date)) +
#      geom_line(aes(y = LEU0254530800, color = "Database Admins.")) +
#      geom_line(aes(y = LEU0254530600, color = "Software Devs.")) +
#      labs(title = "Median Pay by Occupation") + ylab("Median Weekly Pay USD")

## ----eval=FALSE----------------------------------------------------------
#  library(blscrapeR)
#  library(ggplot2)
#  library(tidyr)
#  
#  df <- bls_api(c("TUU10101AA01014236", "TUU10101AA01013951"), startyear = 2005, endyear = 2015) %>%
#      spread(seriesID, value) %>%
#      dateCast()
#  
#  tail(df)
#  
#  ggplot(data = df, aes(x = date)) +
#      geom_line(aes(y = TUU10101AA01014236, color = "Watching TV")) +
#      geom_line(aes(y = TUU10101AA01013951, color = "Communicating")) +
#      labs(title = "Time Use (in hours)t") + ylab("Time Use")

## ----eval=FALSE----------------------------------------------------------
#  library(blscrapeR)
#  library(tidyr)
#  df <- bls_api(c("SMS01000000000000001", "SMS01000006500000001"),
#                  startyear = 2006, endyear = 2016)
#  
#  df <- spread(df, seriesID, value)
#  df$penetration_rt <- df$SMS01000006500000001 / df$SMS01000000000000001
#  tail(df)

## ----eval=FALSE----------------------------------------------------------
#  library(blscrapeR)
#  library(ggplot2)
#  library(tidyr)
#  
#  df <- bls_api(c("ENU0608510010", "ENU1209510010"), startyear = 2005, endyear = 2015) %>%
#      spread(seriesID, value) %>%
#      dateCast()
#  
#  tail(df)
#  
#  ggplot(data = df, aes(x = date)) +
#      geom_line(aes(y = ENU0608510010, color = "Santa Clara, CA")) +
#      geom_line(aes(y = ENU1209510010, color = "Orange, FL")) +
#      labs(title = "Total Employed by County") + ylab("Total Employed")
#  

