module Server ( Server, port, server ) where

type Port = Int

defaultPort :: Port
defaultPort = 6667

data Server = Server {
    port :: Port
  } deriving ( Show )

server :: Server
server = Server{ port=defaultPort }
