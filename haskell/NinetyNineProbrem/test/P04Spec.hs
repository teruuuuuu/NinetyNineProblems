module P04Spec (
    myTest
) where

import Test.HUnit
import P04 (myLength)

myTest :: IO()
myTest = do
    runTestTT $ TestList [ 
        "myLength [1, 2, 3]" ~:   myLength [1, 2, 3] ~=? 3
        , "myLength []" ~:   myLength [] ~=? 0
        ]
    return ()