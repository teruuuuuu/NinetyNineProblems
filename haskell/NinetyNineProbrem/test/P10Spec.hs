module P10Spec (
    myTest
) where

import Test.HUnit
import P10 (encode )

myTest :: IO()
myTest = do
    runTestTT $ TestList [ 
        "encode  \"aaabbbcda\"" ~: encode  "aaabbbcda" ~=? [(3, 'a'), (3, 'b'), (1, 'c'), (1, 'd'), (1, 'a')]
        ]
    return ()