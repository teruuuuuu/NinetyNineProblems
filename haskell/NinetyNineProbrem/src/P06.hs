module P06 (
    isPalindrome
) where

import P05 (myReverse)

isPalindrome   :: (Eq a) => [a] -> Bool
isPalindrome x = x == (myReverse x)