{-
  A really simple introductory Haskell program
  Emma Norling, September 2020
  Modified by Samuel Kent, Septenber 2020
-}

module Basics where
    add :: Integer -> Integer -> Integer -- type definition
    add x y =  x + y -- equation

    -- No type definition provided - ghc will infer the types
    double x = x + x -- equation only!

    inc :: Int -> Int
    inc x = x+1 -- equation to return the input + 1

    -- Again, no type definition. This lead to a problem illustrated in the lecture.
    inc2 = (+ 1) -- another way of doing the same thing

    negate1 :: Bool -> Bool -- Negation of a value.
    negate1 x = not x

    -- Test to convert values.
    convertTest :: Integer -> Int
    convertTest x = fromInteger(x)
