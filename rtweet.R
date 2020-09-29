
## install rtweet from CRAN
install.packages("rtweet")
install.packages("dplyr")

## load rtweet package
library(rtweet)
library(dplyr)

# whatever name you assigned to your created app
appname <- ""

## api key
key <- ""

## api secret 
secret <- ""

## You can reset these tokens below and they will display again
## api access_token
access_token = ""

## api__access_token_secret
access_secret = ""

# create token named "twitter_token"
twitter_token <- create_token(
  app = appname,
  consumer_key = key,
  consumer_secret = secret,
  access_token = access_token,
  access_secret = access_secret)

## get the last 3,200 tweets
week <- get_timeline("NicolasMaduro",
                     token = twitter_token,
                     n = 3200)

cor <- week %>% 
            filter(created_at > "2020-07-18" & created_at <"2020-07-25")
