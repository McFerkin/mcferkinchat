module Server ( Server, port, mcferkinServer, startServer ) where
import Network.Socket

type Port = PortNumber

defaultPort :: Port
defaultPort = 6667

data Server = Server {
    port :: Port
  } deriving ( Show )

mcferkinServer :: Server
mcferkinServer = Server{ port=defaultPort }

startServer :: Server -> IO ()
startServer server = do
    -- create socket
    sock <- socket AF_INET Stream 0
    -- make socket immediately reusable - eases debugging.
    setSocketOption sock ReuseAddr 1
    bindSocket sock (SockAddrInet (port server) iNADDR_ANY)
    -- allow a maximum of 2 outstanding connections
    listen sock 2
    mainLoop sock

mainLoop :: Socket -> IO ()
mainLoop sock = do
    conn <- accept sock
    runConn conn
    mainLoop sock

runConn :: (Socket, SockAddr) -> IO ()
runConn (sock, _) = do
    _ <- send sock "Hi!\n"
    sClose sock
