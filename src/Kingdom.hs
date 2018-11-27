module Kingdom
  ( Kingdom(..)
  ) where

import Cards

data Kingdom = Kingdom
  { _kingdomCards :: [Card]
  }

emptyKingdom :: Kingdom
emptyKingdom = Kingdom []
