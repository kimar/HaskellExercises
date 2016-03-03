module Chapter2 where

{-
3.

“ The script below contains three syntactic errors. Correct these errors and then check that your script works properly using Hugs.”

Excerpt From: Graham Hutton. “Programming in Haskell.” iBooks. 
-}

n = a `div` length xs
    where
      a = 10
      xs = [1,2,3,4,5]
      
{-
4.

“Show how the library function last that selects the last element of a non-empty list could be defined in terms of the library functions introduced in this chapter. Can you think of another possible definition?”

Excerpt From: Graham Hutton. “Programming in Haskell.” iBooks. 
-}

lst xs = xs!!((length xs)-1)
lst' xs = head(reverse xs)

{-
5.

“Show how the library function init that removes the last element from a non-empty list could similarly be defined in two different ways.”

Excerpt From: Graham Hutton. “Programming in Haskell.” iBooks. 
-}
init' xs = reverse (drop 1 (reverse xs))
init'' xs = reverse (tail (reverse xs))