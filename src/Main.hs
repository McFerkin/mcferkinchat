module Main(main) where

import Server

main :: IO ()
main = do
  let myServer = server
  print $ show myServer
