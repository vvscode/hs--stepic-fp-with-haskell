{-
Имея функцию ip = show a ++ show b ++ show c ++ show d определите значения a, b, c, d так, чтобы добиться следующего поведения:
GHCi> ip
"127.224.120.12"
-}

data Dotted = Dotted Int
instance Show Dotted
  where
    show (Dotted a) = show a ++ "."
a = Dotted 127
b = Dotted 224
c = Dotted 120
d = 12