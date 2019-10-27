module P02Spec (
    myTest
) where

import Test.HUnit
import P02 (myButLast)

myTest :: IO()
myTest = do
    runTestTT $ TestList [ 
        "myButLast 3" ~:   myButLast [1, 2, 3] ~=? 2
        , "myButLast 1" ~:   myButLast [1, 2] ~=? 1
        ]
    return ()