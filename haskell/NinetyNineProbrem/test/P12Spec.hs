module P12Spec (
    myTest
) where

import Test.HUnit
import P11
import P12

myTest :: IO()
myTest = do
    runTestTT $ TestList [ 
        "decodeModified  \"4 a 1 b 2 c 2 a 1 d 4 e\"" ~: 
            decodeModified  [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e'] ~=? "aaaabccaadeeee"
        ]
    return ()