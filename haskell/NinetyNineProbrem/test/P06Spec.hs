module P06Spec (
    myTest
) where

import Test.HUnit
import P06 (isPalindrome )

myTest :: IO()
myTest = do
    runTestTT $ TestList [ 
        "isPalindrome  `abcdedcba`" ~:   isPalindrome "abcdedcba" ~=? True
        , "isPalindrome [1, 2, 3, 4]" ~:   isPalindrome [1, 2, 3, 4] ~=? False
        ]
    return ()