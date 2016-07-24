## ----setup, include=TRUE-------------------------------------------------

## ----eval=FALSE----------------------------------------------------------
#  # Computer adn Information Systems Managers in Orlando, FL and San Jose, CA.
#  # Orlando: "OEUM003674000000011302103"
#  # San Jose: "OEUM004194000000011302108"
#  library(blscrapeR)
#  df <- bls_api(c("OEUM003674000000011302103", "OEUM004194000000011302108"))
#  head(df)

## ----eval=FALSE----------------------------------------------------------
#  library(blscrapeR)
#  df <- bls_api("OEUN000000000000000000004")
#  df

## ----eval=FALSE----------------------------------------------------------
#  library(blscrapeR)
#  library(tidyr)
#  library(dplyr)
#  df <- bls_api(c("CMU1030000000000D", "CMU1030000000000P"))
#  
#  # Spread series ids and rename columns to human readable format.
#  df.sp <- spread(df, seriesID, value) %>%
#      rename("hourly_cost"=CMU1030000000000D, "pct_of_wages"=CMU1030000000000P)
#  
#  # Percentages are represented as floating integers. Fix this to avoid confusion.
#  df.sp$pct_of_wages <- df.sp$pct_of_wages*0.01
#  df.sp

## ----eval=FALSE----------------------------------------------------------
#  library(blscrapeR)
#  library(tidyr)
#  library(dplyr)
#  df <- bls_api(c("NBU10500000000000033030", "NBU11500000000000028178"))
#  
#  # Spread series ids and rename columns to human readable format.
#  df.sp <- spread(df, seriesID, value) %>%
#      rename("pct_paid_vacation"=NBU10500000000000033030, "pct_health_ins"=NBU11500000000000028178)
#  
#  # Value data are in whole numbers but represent percentages. Fix this to avoid confusion.
#  df.sp$pct_paid_vacation <- df.sp$pct_paid_vacation*0.01
#  df.sp$pct_health_ins <- df.sp$pct_health_ins*0.01
#  df.sp

