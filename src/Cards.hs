{-# LANGUAGE QuasiQuotes     #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TemplateHaskell #-}

-- | Basic types for Dominion Cards.

module Cards
  ( Card(..)
  , CardType(..)
  , display
  , name
  , cost
  , cardtype
  , text
  , onPlay
  , atEnd
  ) where

import           Control.Lens
import           Data.String.Interpolate

data Card = Card
  { _name     :: String
  , _cost     :: Cost
  , _cardtype :: CardType
  , _text     :: String
  , _onPlay   :: [ Effect ]
  , _atEnd    :: [ Effect ]
  } deriving(Eq, Show)

type Cost = Int

data CardType =
  Curse
  | Treasure
  | Victory
  deriving (Eq, Show)

data Effect = Effect deriving (Eq, Show)

makeLenses ''Card

display :: Card -> String
display (Card {..}) =
  [i|#{_name} (#{_cost}:#{_cardtype})|]
