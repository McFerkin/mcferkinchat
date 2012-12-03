module SimpleSpec ( spec ) where
import Helper

spec :: Spec
spec = do
 describe "Our first spec" $ do
   describe "True" $ do
     it "is True" $ do
       True  `shouldBe` True

     it "is pending" $ do
       pending "not implemented"

   describe "False" $ do
     it "is False" $ do
       False `shouldBe` False
