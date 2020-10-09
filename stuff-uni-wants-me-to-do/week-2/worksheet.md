### COM2108 Functional Programming Autumn 2020
# Week 2 – Give it a go!

After you have completed the pre-recorded mini-lectures for this week, start to build up
your repertoire of knowledge about the standard Prelude. Here are some functions you
should know:

abs, all, and, any, ceiling, concat, div, drop, dropWhile, elem, even, exp, filter, floor, fst, length, map, max, maximum, min, minimum, mod, not, odd, or, product, reverse, round, snd, sum, take, takeWhile, (!!) (:) (++) 
and some mathematical & logic operators: 
(*), (^), (-), (+), (/=), (==), (<), (<=), (>), (>=), (&&), (||)

This is not a comprehensive list, just a subset of the standard prelude, but get to know at least this subset. Some of them have been introduced in the lectures this week, others will be introduced in these exercises, and others you can explore yourself.

Further useful functions can be found in the Data.Char module:
chr, isAlpha, isDigit, isLower, isSpace, isUpper, ord, toLower, toUpper
(The functions from the standard Prelude are available by default. If you want to use functions from another module, such as Data.Char, you need to explicitly import that module, using the instruction
``` Haskell
import Data.Char
```
as a line at the top of the file in which you are defining your functions, before any function definitions. If you wanted to, you could be explicit about which functions you wanted to import from a module, for example:
``` Haskell
import Data.Char (toLower, toUpper)
```
would import only the toLower and toUpper functions from Data.Char; the other functions would not be available.

Have a go at these exercises. If you have questions, come along to online the drop in session, Tuesday 2-4.

## Exercises
1. [Hutton, ex 2.3] The script below contains three syntactic errors. Correct these errors
    and then check that your script works properly.
    ``` Haskell
    N = a 'div' length xs
    where
    a = 10
    xs = [1, 2, 3, 4, 5]
    ```

2. What are the types of the following functions?
    ``` Haskell
    second xs = head (tail xs)
    swap (x,y) = (y,x)
    pair x y = (x,y)
    double x = x*2
    palin xs = reverse xs == xs
    twice f x = f (f x)
    ```
    (You can easily check this by putting the definitions in a file, loading the file, then entering the command “```:type <function>```” where ```<function>``` is the function name you want to check. But before you do this, see if you can work it out. When you check, if there are differences, try to work out why.)

3. [Hutton, ex 4.1] Using library functions, define a function
    ``` Haskell
    halve :: [a] -> ([a],[a])
    ```
    that splits an even-lengthed list into two halves. For example:
    ``` Haskell
    > halve [1, 2, 3, 4, 5, 6]
    ([1, 2, 3], [4, 5, 6])
    ```

4. Implement a function for computing the Euclidean distance between two points, (x1,y1) and (x2,y2).
    
    Reminder: the Euclidean distance is given by:

    ```
    sqrt((x2 - x1)^2 + (y2 - y1)^2)
    ```

5. Define a function that uses library functions to return the first word in a string. For example:

    ``` Haskell
    > firstWord "a test string"
    "a"
    >firstWord " the trickier test string"
    “the”
    ```

    Remember to include a type for your function.

6. There are two library functions that were deliberately not included in the list at the start of this sheet: head and tail. These two functions return the first item in a list and the remainder of the list, respectively. Show how you would write these two functions using pattern matching.

    Write a new function, safeTail, that instead of generating an error when the input is an empty list (as tail does), simply returns an empty list. See if you can provide two different solutions:
    1. Using a conditional expression
    2. Using guarded equations
    Note that the reason head and tail are not included in the list of functions to know is
    that it is preferable to use pattern matching.

7. Define the following functions in a file with their type signatures:
    1. stack takes the first element of a list and puts it on the end of a list
    2. range takes a numerical value and checks to see if it is between 0 and 10, returns True if it is False otherwise
    3. addc takes a Char and a String and adds the Char to the beginning of the String
    4. halves takes a list and divides each element in the list by two
    5. capitalizeStart that takes a string as input and returns the same string with the first character capitalized. (If the first character is not a lowercase letter, it should simply return the input string.)

8. Rewrite the list comprehension:
    ``` Haskell
    [x ^ 2 | x <- [1..20], even x]
    ```
    using the library functions map and filter.

9. Here is alternative definition for a function that has already been introduced:
    ``` Haskell
    (\ (_:xs) -> xs)
    ```
    What function is it? Make sure that you understand how this lambda expression works.

10. Write a lambda expressions to perform the following tasks:
    1. Increment an integer value.
    2. Decrement a value.
    3. (Harder!) Check if a value is a prime number.

11. Given the list of tuples records below, write the choose function using filter and a lambda expression so that it returns the tuples that have True and a number below 10:
    ```haskell
    records = [(True,5), (False,7), (True,12), (True,8), (False,15), (True,4)]
    choose :: (Ord a, Num a) => [(Bool, a)] -> [(Bool, a)]
    choose = undefined
    -- choose records should return
    -- [(True,5),(True,8),(True,4)]
    ```

12. In the mini-lecture on user-defined types, the Shape type was introduced:
    data Shape = Circle Float | Rect Float Float
    Define a function

    ``` Haskell
    scale :: Float -> Shape -> Shape
    ```

    that takes a scaling factor and a shape, and returns the shape with the scaling factor applied. For example:
    ``` Haskell
    > scale 2.0 (Circle 1)
    Circle 2.0
    > scale 2.0 (Rect 1 2)
    Rect 2.0 4.0
    ```
    Note that in order to test your code, you will have to add “deriving Show” to the end of the type definition:
    ``` Haskell
    data Shape = Circle Float | Rect Float Float deriving Show
    ```
    Don’t worry about why this is at the moment; we will come to it in later weeks.

13. [Hutton, ex. 4.8] The Luhn algorithm is used to check bank card numbers for simple errors, such as mistyping a digit, and proceeds as follows:
    1. Consider each digit as a separate number;
    2. Moving left, double every other number from the second last;
    3. Subtract 9 from each number that is now greater than 9;
    4. Add all the resulting numbers together;
    5. If the total is divisible by 10, the card number is valid. 
        Define a function
        ``` Haskell
        luhnDouble :: Int -> Int
        ```
        that doubles a digit and subtracts 9 if the result is greater than 9. For example:
        ``` Haskell
        > luhnDouble 3
        6
        > luhnDouble 6
        3
        ```
        Using luhnDouble and the integer remainder function mod, define a function
        ``` Haskell
        luhn :: Int -> Int -> Int -> Int -> Bool
        ```
        that decides if a four-digit bank card number is valid. For example:
        ``` Haskell
        > luhn 1 7 8 4
        True
        > luhn 4 7 8 3
        False
        ```

## Reference:
[Hutton, ex N.X] refers to exercise X from chapter N of Graham Hutton’s “Programming in Haskell, Second Edition” (2016)