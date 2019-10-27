module P07Spec (
    myTest
) where

import Test.HUnit
-- import P07 (myFlatten )

data NestedList a = Elem a | List [NestedList a]

myFlatten :: NestedList a -> [a]
myFlatten (Elem x) = [x]
myFlatten (List []) = []
myFlatten (List (x:xs)) = myFlatten x ++ myFlatten (List xs)

myTest :: IO()
myTest = do
    runTestTT $ TestList [ 
        "myFlatten  List [ Elem 6]" ~: myFlatten (Elem 5) ~=? [5]
        , "myFlatten  List [ Elem 6]" ~: myFlatten (List [Elem 5]) ~=? [5]
        ]
    return ()