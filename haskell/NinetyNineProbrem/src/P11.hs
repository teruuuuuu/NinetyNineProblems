module P11 (
    encodeModified, listData
) where
import P10

data ListItem a = Single a | Multiple Int a
    deriving (Show, Eq)

listData :: Int -> a -> ListItem a
listData 1 x = Single x
listData n x = Multiple n x

encodeModified :: Eq a => [a] -> [ListItem a]
encodeModified = map encodeHelper . encode
    where
      encodeHelper (n,x) = listData n x


