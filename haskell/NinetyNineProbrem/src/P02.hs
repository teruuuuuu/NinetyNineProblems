module P02 (
    myButLast 
) where

import P01 (myLast)

-- myButLast :: [a] -> a
-- myButLast = myLast . init

myButLast :: [a] -> a
myButLast [x,_]  = x
myButLast (_:xs) = myButLast xs