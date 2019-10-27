module P05Spec (
    myTest
) where

import Test.HUnit
import P05 (myReverse)

myTest :: IO()
myTest = do
    runTestTT $ TestList [ 
        "myReverse `abcdefg`" ~:   myReverse "abcdefg" ~=? "gfedcba"
        , "myReverse [1, 2, 3, 4]" ~:   myReverse [1, 2, 3, 4] ~=? [4,3,2,1]
        ]
    return ()