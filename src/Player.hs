{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE QuasiQuotes     #-}

module Player
  ( Player(..)
  , Strategy(..)
  , name
  , strategy
  , mat
  , Player.display
  ) where

import Control.Lens
import Data.String.Interpolate

import Mat

data Strategy = Strategy

data Player = Player
  { _name     :: String
  , _strategy :: Strategy
  , _mat      :: Mat
  }

makeLenses ''Player

display :: Player -> String
display (Player{..}) =
  [i|Player #{_name}:
#{Mat.display _mat}|]
