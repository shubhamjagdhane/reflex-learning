{-# LANGUAGE OverloadedStrings #-}
import Reflex.Dom

main :: IO()
main = mainWidget bodyElement 

bodyElement :: MonadWidget t m => m ()
bodyElement = el "div" $ do
  el "h2" $ text "Simple Text Input"
  ti <- textInput def
  el "h3" $  dynText $ value ti

