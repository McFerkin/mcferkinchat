import Helper
import qualified SimpleSpec

main :: IO ()
main = hspec $ do
  SimpleSpec.spec
