-- | Base Cards -- Copper, Silver, Gold, Estate, Dutchy, Province, Curse

module Card.Base
 ( copperCard
 , silverCard
 , goldCard
 , estateCard
 , duchyCard
 , provinceCard
 , curseCard
 ) where

import           Cards

copperCard :: Card
copperCard = Card {
  _name = "Copper",
  _cost = 0,
  _cardtype = Treasure,
  _text = "",
  _onPlay = [], -- eventually will be +1 coin
  _atEnd  = []
  }

silverCard :: Card
silverCard = Card {
  _name = "Silver",
  _cost = 3,
  _cardtype = Treasure,
  _text = "",
  _onPlay = [], -- eventually will be +2 coin
  _atEnd  = []
  }

goldCard :: Card
goldCard = Card {
  _name = "Gold",
  _cost = 6,
  _cardtype = Treasure,
  _text = "",
  _onPlay = [], -- eventually will be +3 coin
  _atEnd  = []
  }

estateCard :: Card
estateCard = Card {
  _name = "Estate",
  _cost = 2,
  _cardtype = Victory,
  _text = "",
  _onPlay = [],
  _atEnd = [] -- eventually will be +1 VP
  }

duchyCard :: Card
duchyCard = Card {
  _name = "Duchy",
  _cost = 5,
  _cardtype = Victory,
  _text = "",
  _onPlay = [],
  _atEnd = [] -- eventually will be +3 VP
  }

provinceCard :: Card
provinceCard = Card {
  _name = "Province",
  _cost = 8,
  _cardtype = Victory,
  _text = "",
  _onPlay = [],
  _atEnd = [] -- eventually will be +6 VP
  }

curseCard :: Card
curseCard = Card {
  _name = "Curse",
  _cost = 2,
  _cardtype = Curse,
  _text = "",
  _onPlay = [],
  _atEnd = [] -- eventually will be -1 VP
  }
