{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE QuasiQuotes     #-}
{-# LANGUAGE RecordWildCards #-}

module Mat
  ( Mat(..)
  , deck
  , hand
  , playArea
  , discard
  , actions
  , buys
  , coins
  , victoryPoints
  , Mat.display
  ) where

import Control.Lens
import Data.List
import Data.String.Interpolate

import Cards

data Mat = Mat
  { _deck     :: [Card]
  , _hand     :: [Card]
  , _playArea :: [Card]
  , _discard  :: [Card]
  , _actions  :: Int
  , _buys     :: Int
  , _coins    :: Int
  , _victoryPoints :: Int
  }

makeLenses ''Mat

displayList :: (a -> String) -> [a] -> String
displayList displayElement = intercalate "\n" . map displayElement

display :: Mat -> String
display (Mat {..}) =
  let h = displayList Cards.display _hand in
  let p = displayList Cards.display _playArea in
  let d = case _discard of { [] -> "Empty"; (x:_) -> Cards.display x} in
  [i|Actions: #{_actions}, Buys: #{_buys}, Coins: #{_coins}, VP: #{_victoryPoints}
Draw Pile (#{length _deck})
Hand:
#{h}
In Play:
#{p}
Discard Pile: #{d}|]
