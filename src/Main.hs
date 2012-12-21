module Main(main) where

import Server

main :: IO ()
main = do
  let server = mcferkinServer
  startServer server
