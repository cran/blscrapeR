## ----setup, include=TRUE-------------------------------------------------

## ----eval=FALSE----------------------------------------------------------
#  # U3 Unemployment vs. U6 Unemployment
#  # More information on unemployment rates here:
#  # http://www.bls.gov/news.release/empsit.t15.htm
#  library(blscrapeR)
#  library(ggplot2)
#  df <- bls_api(c("LNS13327709", "LNS14000000"),
#                 startyear = 2000, endyear = 2015)
#  tail(df)
#  
#  ggplot(data=df, aes(x = date, y = value, color=seriesID)) +
#      geom_line() +
#      labs(title = "US Unemployment") +
#      theme(legend.position="top") +
#      scale_color_discrete(breaks=c("LNS13327709", "LNS14000000"),
#                           labels=c("U-6", "U-3"))

## ----eval=FALSE----------------------------------------------------------
#  library(blscrapeR)
#  library(ggplot2)
#  df <- bls_api(c("LEU0254530800", "LEU0254530600"),
#                  startyear = 2000, endyear = 2015)
#  tail(df)
#  
#  ggplot(df, aes(x=date, y=value, color=seriesID)) +
#      geom_line() +
#      labs(title = "Median Pay by Occupation") +
#      theme(legend.position="top") +
#      scale_color_discrete(name="Occupation",
#          breaks=c("LEU0254530800", "LEU0254530600"),
#          labels=c("Database Admins.", "Software Devs."))

## ----eval=FALSE----------------------------------------------------------
#  library(blscrapeR)
#  library(ggplot2)
#  df <- bls_api(c("TUU10101AA01014236", "TUU10101AA01013951"),
#                  startyear = 2005, endyear = 2015)
#  tail(df)
#  
#  ggplot(df, aes(x=date, y=value, color=seriesID)) +
#      geom_line() +
#      labs(title = "Time Use (in hours)") +
#      theme(legend.position="top") +
#      scale_color_discrete(name="Activity",
#          breaks=c("TUU10101AA01014236", "TUU10101AA01013951"),
#          labels=c("Watching TV", "Communicating"))

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
#  df <- bls_api(c("ENU0608510010", "ENU1209510010"),
#                  startyear = 2005, endyear = 2015)
#  tail(df)
#  
#  ggplot(df, aes(x=date, y=value, color=seriesID)) +
#      geom_line() +
#      labs(title = "Total Employed by County") +
#      theme(legend.position="top") +
#      scale_color_discrete(name="Activity",
#          breaks=c("ENU0608510010", "ENU1209510010"),
#          labels=c("Santa Clara, CA", "Orange, FL"))

