module ValentinesDay where

-- Define the function and required algebraic data types (ADT) below.

data Approval
  = Yes
  | No
  | Maybe

data Cuisine
  = Korean
  | Turkish

data Genre
  = Crime
  | Horror
  | Romance
  | Thriller

data Activity
  = BoardGame
  | Chill
  | Movie Genre
  | Restaurant Cuisine
  | Walk Int

rateActivity :: Activity -> Approval
rateActivity activity =
  case activity of
    BoardGame -> No
    Chill -> No
    Movie Romance -> Yes
    Movie _ -> No
    Restaurant Korean -> Yes
    Restaurant Turkish -> Maybe
    Walk 1 -> Yes
    Walk 2 -> Yes
    Walk 3 -> Maybe
    Walk 4 -> Maybe
    Walk 5 -> Maybe
    Walk _ -> No
