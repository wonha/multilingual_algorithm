qsort :: Ord a => [a] -> [a] -- qsort is a function that maps between list of order-able values 'a'
qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger -- operator
    where -- keywork
        smaller = [a | a <- xs, a <= x] -- local definition
        larger = [b | b <- xs, b > x] -- all element from list
