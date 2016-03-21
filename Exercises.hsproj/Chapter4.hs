module Chapter4 where
  
{--
“1.  Using library functions, define a function halve :: [a] → ([a], [a]) that splits an even-lengthed list into two halves. For example:”

Excerpt From: Graham Hutton. “Programming in Haskell.” iBooks. 
--}

half::[Int] -> [[Int]]
half x = [a, b]
  where
    a = fst $ splitAt l x
    b = snd $ splitAt l x
    l = (length x) `div` 2
    