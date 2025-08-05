module GuessingGame (reply) where

reply :: Int -> String
reply guess
    | guess == 42 = "Correct"
    | guess == 41 || guess == 43 = "So close"
    | guess >= 1 && guess < 41 ="Too low"
    | guess > 43 && guess <= 100 ="Too high"
    | otherwise = error "Number out of range"