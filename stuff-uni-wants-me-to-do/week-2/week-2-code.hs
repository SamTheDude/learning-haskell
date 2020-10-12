{-
File to complete all the tasks listed in the worksheet.
Samuel Kent, 2020
-}

data Shape = Circle Float | Rect Float Float deriving Show

module Week2 where
    {- Q1: Fixed: name, arguments and indentation. -}
    n = a `div` (length xs)
        where
        a = 10
        xs = [1, 2, 3, 4, 5]

    {- Q2: Functions to test the types of -}
    second :: [a] -> a
    second xs = head (tail xs)

    swap :: (a, b) -> (b, a)
    swap (x,y) = (y,x)

    pair :: a -> b -> (a, b)
    pair x y = (x,y)

    double :: Num a => a -> a
    double x = x*2

    palin :: Eq a => [a] -> Bool
    palin xs = reverse xs == xs

    twice :: (a -> a) -> a -> a
    twice f x = f (f x)

    {- Q3 -}
    halve :: [a] -> ([a],[a])
    halve xs = 
        ((take s xs), (drop s xs))
        where
        s = (length xs ) `div` 2

    {- Q4 -}
    euclid_dist_2 :: Floating a => (a, a) -> (a, a) -> a
    euclid_dist_2 (x1, y1) (x2, y2) = 
        sqrt((((x2 - x1) ** 2) + ((y2 - y1) ** 2)))

    {- Q5 -}
    get_first_word :: [Char] -> [Char]
    get_first_word xs = words(xs)!!0

    {- Q6 -}
    safe_tail_pmatch :: [a] -> [a]
    safe_tail_pmatch [] = []
    safe_tail_pmatch xs = tail xs

    safe_tail_guard :: Eq a => [a] -> [a]
    safe_tail_guard xs | xs == []  = []
                       | otherwise = tail xs

    safe_tail :: Eq a => [a] -> [a]
    safe_tail xs = safe_tail_guard xs

    {- Q7 -}
    {- Takes the head of an array and moves it to the last index. -}
    stack :: Eq a => [a] -> [a]
    stack x = concat [a, [b]]
        where
        a = safe_tail x
        b = head x
    
    {- Checks if the value is between 0 and 10. -}
    range :: Int -> Bool
    range x = (x < 10) && (x > 0)

    {- Adds a Char to the front of a string. -}
    addc :: Char -> String -> String
    addc c s = concat [[c], s]

    {- Divides each element in the list by 2. -}
    halves :: Fractional a => [a] -> [a]
    halves x = map (/2) x
    
    {- Q8 -}
    gen_Q8_list :: [Int]
    gen_Q8_list = filter even (map (^2) [1..20])

    {- Q9 -}
    {- Validates that the lambda is the same as the tail function 
    for the given input. -}
    test_tail_func :: Eq a => [a] -> Bool
    test_tail_func x = (\ (_:xs) -> xs) x == tail x

    {- Q10 -}
    inc_integer_lambda :: Integer -> Integer
    inc_integer_lambda = (\x -> x + 3)

    dec_value_lambda :: Num a => a -> a
    dec_value_lambda = (\x -> x - 3)

    check_prime_lambda :: Integral a => a -> Bool
    check_prime_lambda = (\p -> (length [x | x <- [1..(ceiling (fromIntegral(p)/2))], mod p x == 0] == 1))

    {- Q11 -}
    records = [(True,5), (False,7), (True,12), (True,8), (False,15), (True,4)]
    choose :: (Ord a, Num a) => [(Bool, a)] -> [(Bool, a)]
    choose x = filter (\(b, n) -> n < 10 && b) x

    {- Q12 -}
    scale :: Shape a => a -> a
    scale s = s * 2