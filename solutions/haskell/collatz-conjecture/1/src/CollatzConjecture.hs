module CollatzConjecture (collatz) where

oddNumber :: Integer -> Integer
oddNumber n = (3 * n) + 1

evenNumber :: Integer -> Integer
evenNumber n = n `div` 2

collatz :: Integer -> Maybe Integer
collatz n = collatz' n 0

collatz' :: Integer -> Integer -> Maybe Integer
collatz' n i
  | n <= 0 = Nothing
  | n == 1 = Just i
  | odd n = collatz' (oddNumber n) (i + 1)
  | otherwise = collatz' (evenNumber n) (i + 1)
