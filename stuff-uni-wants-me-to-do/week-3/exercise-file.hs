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
    sum_list :: Num a => [a] -> a
    sum_list (x:xs) 
        | (length xs) == 0 = x
        | otherwise = x + (sum_list xs)

    split_list_head :: Int -> [a] -> [a]
    split_list_head n (x:xs)
        | n == 1 = [x]
        | (length xs) == 0 = [x]
        | otherwise = concat [[x], (split_list_head (n-1) xs)]

    reverse_head :: [a] -> a
    reverse_head (x:xs)
        | (length xs) == 0 = x
        | otherwise = reverse_head xs
    
    --zip :: [a] -> [b] -> [(a, b)]

    -- Leibniz Approximation to Pi
    leibniz_approx :: (Float, Float, Int) -> (Float, Float, Int)
    leibniz_approx (l, c, i) = (l, c, i+1)


    approx_pi :: Float -> (Float, Int)
    approx_pi x = (x, 0)