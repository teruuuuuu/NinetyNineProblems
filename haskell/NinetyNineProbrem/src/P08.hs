module P08 (
    compress 
) where


-- compress :: Eq a => [a] -> [a]
-- compress = map head . group

myDropWhile :: (a -> Bool) -> [a] -> [a]
myDropWhile f [] = []
myDropWhile f (x:xs) = if f x 
    then myDropWhile f xs
    else (x:xs)

compress []     = []
compress (x:xs) = x : (compress $ myDropWhile (== x) xs)