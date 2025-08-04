module Pangram (isPangram) where

import Data.List
import Data.Char

alpha = ['a'..'z']

check :: String -> Bool
check = (==) alpha . sort . (intersect) alpha . map toLower . filter isLetter

isPangram :: String -> Bool
isPangram text = check text
