{-# LANGUAGE OverloadedStrings #-}
import           Reflex.Dom
import qualified Data.Text as T 
import qualified Data.Map as Map
import           Data.Monoid ((<>))

main :: IO ()
main = mainWidget $ do
    el "h1" $ text "A link to Google in a new tab"
    elAttr "a" attrs $ text "Github Profile"

attrs :: Map.Map T.Text T.Text
attrs = ("target" =: "_blank") <> ("href" =: "https://github.com/shubhamjagdhane")

