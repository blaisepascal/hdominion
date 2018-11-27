{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE RecordWildCards #-}
-- |

module Pile
  ( Pile(..)
  , Pile.display
  , makePile
  , makePile'
  ) where

import Data.String.Interpolate

import Cards

data Pile = Pile
  { _type :: Card
  , _pile :: [Card]
  }

display :: Pile -> String
display (Pile{..}) =
  case _pile of
    [] -> [i|#{Cards.display _type} (Empty)|]
    (x:_) -> [i|#{Cards.display x} (#{length _pile})|]

makePile' :: Int -> Card -> Pile
makePile' n c = Pile c $ replicate n c

makePile :: Card -> Pile
makePile c =
  case (_cardtype c) of
    Victory -> makePile' 8 c
    _       -> makePile' 10 c
