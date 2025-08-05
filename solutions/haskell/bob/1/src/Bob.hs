module Bob (responseFor) where

import qualified Data.Char as C
import qualified Data.Maybe as M
import Data.Text (Text)
import qualified Data.Text as T

stripExclamation :: Text -> String
stripExclamation = T.unpack . T.filter C.isLetter . M.fromJust . T.stripSuffix (T.pack "!")

stripQuestion :: Text -> String
stripQuestion = T.unpack . T.filter C.isLetter . M.fromJust . T.stripSuffix (T.pack "?")

checkAllCapitals :: Text -> Bool
checkAllCapitals text
  | T.isSuffixOf (T.pack "!") text = all C.isUpper $ stripExclamation text
  | T.isSuffixOf (T.pack "?") text = all C.isUpper $ stripQuestion text
  | otherwise = all C.isUpper . T.unpack $ T.filter C.isLetter text

isOnlyNumbers :: Text -> Bool
isOnlyNumbers = all C.isNumber . T.unpack . T.filter C.isAlphaNum

isQuestion :: Text -> Bool
isQuestion text
  | T.isSuffixOf (T.pack " ") text = isQuestion . M.fromJust $ T.stripSuffix (T.pack " ") text
  | otherwise = T.isSuffixOf (T.pack "?") text

responseFor :: Text -> Text
responseFor xs
  | all C.isSpace (T.unpack xs) = T.pack "Fine. Be that way!"
  | isQuestion xs && checkAllCapitals xs && not (isOnlyNumbers xs) = T.pack "Calm down, I know what I'm doing!"
  | checkAllCapitals xs && not (isOnlyNumbers xs) = T.pack "Whoa, chill out!"
  | isQuestion xs || (isQuestion xs && isOnlyNumbers xs) = T.pack "Sure."
  | otherwise = T.pack "Whatever."
