module DNA (toRNA) where

toRNA :: String -> Either Char String
toRNA = traverse complementaryNucleotide

complementaryNucleotide :: Char -> Either Char Char
complementaryNucleotide 'G' = Right 'C'
complementaryNucleotide 'C' = Right 'G'
complementaryNucleotide 'T' = Right 'A'
complementaryNucleotide 'A' = Right 'U'
complementaryNucleotide c = Left c
