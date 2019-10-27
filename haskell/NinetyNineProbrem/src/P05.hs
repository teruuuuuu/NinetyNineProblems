module P05 (
    myReverse
) where

myReverse  :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

-- myReverse          :: [a] -> [a]
-- myReverse          =  foldl (flip (:)) []