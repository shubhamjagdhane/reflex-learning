{-# LANGUAGE OverloadedStrings #-}
import Reflex.Dom
import Data.Map as Map

main :: IO ()
main = mainWidgetWithHead headElement bodyElement

headElement :: MonadWidget t m => m ()
headElement = do
  el "title" $ text "Main Title"
  styleSheet "css/simple.css"  
  metadata
  where
    styleSheet link = elAttr "link" (Map.fromList [
          ("rel", "stylesheet")
        , ("type", "text/css")
        , ("href", link)
      ]) $ return ()
    
    metadata = elAttr "meta" (Map.fromList [
          ("name", "description")
        , ("content", "This is my metadata")
      ]) $ return ()


bodyElement :: MonadWidget t m => m ()
bodyElement =  el "header" $ do
  el "div" $ do
    el "h1" $ text "This is how professional website are build"
    el "h4" $ text "In this case we have place css directory into .jsexe directory"
  return ()
