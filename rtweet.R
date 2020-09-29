
## install rtweet from CRAN
install.packages("rtweet")
install.packages("dplyr")

## load rtweet package
library(rtweet)
library(dplyr)

# whatever name you assigned to your created app
appname <- ""

## api key (example below is not a real key)
key <- ""

## api secret (example below is not a real key)
secret <- ""

access_token = ""
access_secret = ""

# create token named "twitter_token"
twitter_token <- create_token(
  app = appname,
  consumer_key = key,
  consumer_secret = secret,
  access_token = access_token,
  access_secret = access_secret)

## get user IDs of accounts followed by CNN
week <- get_timeline("NicolasMaduro",
                     token = twitter_token,
                     n = 3200
)

  