module P03 (
    elementAt 
) where

elementAt :: [a] -> Int -> a
elementAt (x:xs) 0 = x
elementAt (x:xs) i = elementAt xs (i-1)