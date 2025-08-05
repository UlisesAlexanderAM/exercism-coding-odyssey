module LeapYear (isLeapYear) where

evenlyBy400 :: Integer -> Bool
evenlyBy400 num 
    | num `mod` 400 == 0 = True
    | otherwise = False

evenlyBy100 :: Integer -> Bool
evenlyBy100 num 
    | num `mod` 100 == 0 = True
    | otherwise = False

evenlyBy4 :: Integer -> Bool
evenlyBy4 num 
    | num `mod` 4 == 0 = True
    | otherwise = False

isLeapYear :: Integer -> Bool
isLeapYear year = evenlyBy4 year && not (evenlyBy100 year) || evenlyBy400 year
