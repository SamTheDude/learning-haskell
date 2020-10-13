# Week 3 – Give it a go!

Have a go at these exercises. If you have questions, come along to online a drop in session, Tuesday 2-4. (Feel free to ask questions about these exercises in any week, not just the week after they are released.)

## Exercises

In the mini-lectures, two definitions of factorial were given. It was remarked that both have a problem: they won’t work for negative input. In fact the factorial of a negative number is undefined. Modify either a definition of factorial so that it reports an appropriate error if the input is negative.

In this week’s mini-lectures, we examined the following implementation of length:

```Haskell
length :: [a] -> Int
	length [] = 0
	length (x:xs) = 1 + length xs
```

If we were to evaluate the function call length [1,2,3] we would get:

```Haskell
length [1,2,3]
= length (1:[2,3])
= 1 + length [2,3]
= 1 + length (2:[3])
= 1 + 1 + length [3]
= 1 + 1 + length (3:[])
= 1 + 1 + 1 + length []
= 1 + 1 + 1 + 0
```

Look at the definition of nth from the same mini-lecture, and using the same approach as above, show the evaluation of nth 5 [9,4,10,1,2,6,9]

[Hutton, ex 6.4] Define a recursive function Euclid :: Int -> Int -> Int that implements Euclid’s algorithm for calculating the greatest common divisor of two non-negative integers: if the two numbers are equal, this number is the result; otherwise, the smaller number is subtracted from the larger, and the same process is repeated. For example:

```Haskell
> euclid 6 27
3
```

[Hutton, ex 6.8] Construct definitions for the library functions that:
* calculate the sum of a list of numbers;
* take a given number of elements from the start of a list;
* select the last element of a non-empty list.
* Construct a definition for the library function zip. This function takes two lists and “zips” them together, producing a list of pairs, such that the first pair contains the first item from the first list and the first item from the second, and so on. If one list is shorter than the other, the function stops when the shorter list runs out of items. For example:

```Haskell
zip [1,2,3] ”abcdefg” = [(1,’a’), (2,’b’), (3,’c’)]
```

	•	The Leibniz formula for  is given by: 1 - 1/3 + 1/5 - 1/7...

Write a function approx_pi that takes a single argument: the tolerance you want for the return value. The output should be a tuple: the first value in the tuple should be the approximation of the value of , accurate at this tolerance. The second item in the tuple should be the number of recursive steps that were required to get this accuracy.

For example:

```Haskell
> approx_pi 0.001
(3.1420924036835256,2000)
```
(Yes, it converges very slowly.)

Stand by for further problems, to exercise your Haskell muscles. A new set of exercises will soon appear introducing the problem that you will use in your end-of-semester programming assignment.

Reference:
[Hutton, ex N.X] refers to exercise X from chapter N of Graham Hutton’s “Programming in Haskell, Second Edition” (2016).

