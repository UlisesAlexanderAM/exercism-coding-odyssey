module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

earthYearOnSecs :: Float
earthYearOnSecs = 31557600

mercuryYear :: Float
mercuryYear = earthYearOnSecs * 0.2408467

venusYear :: Float
venusYear = earthYearOnSecs * 0.61519726

marsYear :: Float
marsYear = earthYearOnSecs * 1.8808158

jupiterYear :: Float
jupiterYear = earthYearOnSecs * 11.862615

saturnYear :: Float
saturnYear = earthYearOnSecs * 29.447498

uranusYear :: Float
uranusYear = earthYearOnSecs * 84.016846

neptuneYear :: Float
neptuneYear = earthYearOnSecs * 164.79132

ageOn :: Planet -> Float -> Float
ageOn Mercury seconds = seconds / mercuryYear
ageOn Venus seconds = seconds / venusYear
ageOn Earth seconds = seconds / earthYearOnSecs
ageOn Mars seconds = seconds / marsYear
ageOn Jupiter seconds = seconds / jupiterYear
ageOn Saturn seconds = seconds / saturnYear
ageOn Uranus seconds = seconds / uranusYear
ageOn Neptune seconds = seconds / neptuneYear