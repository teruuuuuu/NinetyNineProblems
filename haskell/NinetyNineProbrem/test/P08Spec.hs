module P08Spec (
    myTest
) where

import Test.HUnit
import P08 (compress  )

myTest :: IO()
myTest = do
    runTestTT $ TestList [ 
        "compress \"aaaabccaadeeee\"" ~: compress "aaaabccaadeeee" ~=? "abcade"
        , "compress  [1,1,2,3,6,7,7,6]" ~: compress  [1,1,2,3,6,7,7,6] ~=? [1,2,3,6,7,6]
        ]
    return ()