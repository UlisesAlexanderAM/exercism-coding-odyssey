module LuciansLusciousLasagna (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes) where

-- TODO: define the expectedMinutesInOven constant
expectedMinutesInOven :: Int
expectedMinutesInOven = 40

-- TODO: define the preparationTimeInMinutes function
preparationTimeInMinutes :: Int -> Int
preparationTimeInMinutes = (*)2

-- TODO: define the elapsedTimeInMinutes function

elapsedTimeInMinutes :: Int -> Int -> Int
elapsedTimeInMinutes numLayers numMinutes = (preparationTimeInMinutes numLayers) + numMinutes