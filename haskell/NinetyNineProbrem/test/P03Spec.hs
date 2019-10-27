module P03Spec (
    myTest
) where

import Test.HUnit
import P03 (elementAt)

myTest :: IO()
myTest = do
    runTestTT $ TestList [ 
        "elementAt [1, 2, 3] 0" ~:   elementAt [1, 2, 3] 0 ~=? 1
        , "elementAt [1, 2, 3] 2" ~:   elementAt [1, 2, 3] 2 ~=? 3
        ]
    return ()