-- Chapter 1
{-
“ Define a function product that produces the product of a list of numbers, and show using your definition that product [2, 3, 4] = 24.”

Excerpt From: Graham Hutton. “Programming in Haskell.” iBooks.
-}
pdct [] = 1
pdct (x:xs) = x * pdct xs

{-
“How should the definition of the function qsort be modified so that it produces a reverse sorted version of a list?”

Excerpt From: Graham Hutton. “Programming in Haskell.” iBooks. 
-}
qsortr [] = []
qsortr (x:xs) = qsortr smaller ++ [x] ++ qsortr larger
                where
                  smaller = [a | a<-xs, a>=x]
                  larger = [b | b<-xs, b<x]s