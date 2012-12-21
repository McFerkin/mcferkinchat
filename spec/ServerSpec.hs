module ServerSpec ( spec ) where
import Helper
import Server

spec :: Spec
spec = do
 describe "The Server" $ do
   describe "default port" $ do
     it "is 6667" $ do
       let testObject = mcferkinServer
       (port testObject) `shouldBe` 6667
