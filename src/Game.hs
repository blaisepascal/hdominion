{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE RecordWildCards #-}

module Game
  ( Game(..)
  , Game.display
  , supply
  , players
  , trash
  ) where

import Control.Lens
import Data.String.Interpolate

import Cards
import Pile
import Player
import Utils

data Game = Game
  { _supply :: [Pile]
  , _players :: [Player]
  , _trash :: [Card]
  }

makeLenses ''Game

display :: Game -> String
display (Game{..}) =
  let s = displayList Pile.display _supply in
  let p = displayList Player.display _players in
  let t = displayList Cards.display _trash in
    [i|Supply
#{s}
Trash
#{t}
Players
#{p}|]
