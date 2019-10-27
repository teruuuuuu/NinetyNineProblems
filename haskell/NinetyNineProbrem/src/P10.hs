module P10 (
    encode   
) where

import P04 (myLength)    
import P09 (pack)

encode :: Eq a => [a] -> [(Int, a)]
encode xs = map (\x -> (myLength x, head x)) (pack xs)