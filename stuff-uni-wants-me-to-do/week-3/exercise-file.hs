{-
File for the exercises in week 3.
Samuel Kent, 2020
-}

module Week3 where
    -- [Hutton, ex 6.4] 
    -- Implements Euclid's algorithm to find the GFD.
    euclid :: Int -> Int -> Int
    euclid x y 
        | x < y = euclid y x
        | x `mod` y == 0 = y
        | otherwise = euclid y (x `mod` y)

    -- [Hutton, ex 6.8]
    