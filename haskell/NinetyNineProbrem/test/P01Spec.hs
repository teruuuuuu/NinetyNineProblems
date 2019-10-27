module P01Spec (
    myTest
) where

import Test.HUnit
import P01 (myLast)

myTest :: IO()
myTest = do
    runTestTT $ TestList [ 
        "last 3" ~:   myLast [1, 2, 3] ~=? 3
        , "last 1" ~:   myLast [1] ~=? 1
        ]
    return ()