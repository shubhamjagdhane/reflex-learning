{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE OverloadedStrings #-}
import Reflex.Dom
import Data.FileEmbed

main :: IO ()
main = mainWidgetWithCss css bodyElement
   where css = $(embedFile "css/simple.css")

bodyElement :: MonadWidget t m => m ()
bodyElement =  el "div" $ do
     el "h1" $ text "CSS is added with .css file"
     return ()
