module P09Spec (
    myTest
) where

import Test.HUnit
import P09 (pack )

myTest :: IO()
myTest = do
    runTestTT $ TestList [ 
        "pack \"aaabbbcda\"" ~: pack "aaabbbcda" ~=? ["aaa", "bbb", "c", "d", "a"]
        ]
    return ()