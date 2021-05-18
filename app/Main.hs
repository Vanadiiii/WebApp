{-# LANGUAGE OverloadedStrings #-}
module Main where

import Web.Spock
import Web.Spock.Config

app :: SpockM () () () ()
app = get root $ text "Hello World!"

main :: IO ()
main = 
  do cfg <- defaultSpockCfg () PCNoDatabase ()
     let mw = spock cfg app
     runSpock 8080 mw
