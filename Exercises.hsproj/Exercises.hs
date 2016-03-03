-- Chapter 1

{-
“Give another possible calculation for the result of double (double 2).”

Excerpt From: Graham Hutton. “Programming in Haskell.” iBooks.
-}
double x = x + x

{-
“Show that sum [x] = x for any number x.”

Excerpt From: Graham Hutton. “Programming in Haskell.” iBooks. 
-}
sm [] = 0
sm (x:xs) = x + sm xs

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
                  larger = [b | b<-xs, b<x]
                  
{-
“What would be the effect of replacing ≤ by < in the definition of qsort? Hint: consider the example qsort [2, 2, 3, 1, 1].”

Excerpt From: Graham Hutton. “Programming in Haskell.” iBooks. 
-}
qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
                where
                  smaller = [a | a<-xs, a<x]
                  larger = [b | b<-xs, b>x]