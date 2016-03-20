{-
Напишите функцию groupElems которая группирует одинаковые элементы в списке (если они идут подряд) и возвращает список таких групп.

GHCi> groupElems []
[]
GHCi> groupElems [1,2]
[[1],[2]]
GHCi> groupElems [1,2,2,2,4]
[[1],[2,2,2],[4]]
GHCi> groupElems [1,2,3,2,4]
[[1],[2],[3],[2],[4]]
Разрешается использовать только функции, доступные из библиотеки Prelude.
-}
groupElems :: Eq a => [a] -> [[a]]
groupElems []     = []
groupElems (x:xs) = gacc xs [x] []
  where
    gacc []     acc     all  = reverse $ acc:all
    gacc (x:xs) (z:acc) all | x == z    = gacc xs (z:z:acc) all
    gacc (x:xs) (z:acc) all | otherwise = gacc xs [x]       ((z:acc):all)