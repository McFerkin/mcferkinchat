import Helper
import qualified SimpleSpec
import qualified ServerSpec

main :: IO ()
main = hspec $ do
  SimpleSpec.spec
  ServerSpec.spec
