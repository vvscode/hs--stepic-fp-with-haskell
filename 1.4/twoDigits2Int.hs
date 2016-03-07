import Data.Char
twoDigits2Int :: Char -> Char -> Int
twoDigits2Int x y = if((&&) (isDigit x) (isDigit y)) then (+) ((*) 10 (digitToInt x)) (digitToInt y) else 100