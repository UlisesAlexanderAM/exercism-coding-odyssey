module ValentinesDay where

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

rateDistance :: Int -> Approval
rateDistance km
  | km > 0 && km < 3 = Yes
  | km <= 5 = Maybe
  | otherwise = No

rateActivity :: Activity -> Approval
rateActivity activity =
  case activity of
    BoardGame -> No
    Chill -> No
    Movie Romance -> Yes
    Movie _ -> No
    Restaurant Korean -> Yes
    Restaurant Turkish -> Maybe
    Walk km -> rateDistance km
