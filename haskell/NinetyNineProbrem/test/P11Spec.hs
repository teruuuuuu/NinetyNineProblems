module P11Spec (
    myTest
) where

import Test.HUnit
import P11

myTest :: IO()
myTest = do
    runTestTT $ TestList [ 
        "encodeModified  \"aaaabccaadeeee\"" ~: encodeModified  "aaaabccaadeeee" ~=? [listData 4 'a',listData 1 'b',listData 2 'c',listData 2 'a',listData 1 'd',listData 4 'e']  
        ]
    return ()