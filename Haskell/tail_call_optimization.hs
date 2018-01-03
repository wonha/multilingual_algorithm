sumList :: [Integer] -> Integer
sumList [] = 0
sumList (x:xs) = x + (sumList xs)

sumList [1, 2, 3, 4] =>
    1 + (sumList [2, 3, 4]) =>
    1 + (2 + (sumList [3, 4])) =>
    1 + (2 + (3 + (sumList [4]))) =>
    1 + (2 + (3 + (4 + (sumList [])))) =>
    1 + (2 + (3 + (4 + 0))) =>
    1 + (2 + (3 + 4)) =>
    1 + (2 + 7) =>
    1 + 9 =>
    10


