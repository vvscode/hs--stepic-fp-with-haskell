{-
Реализуйте функцию seqA, находящую элементы следующей рекуррентной последовательности

a0=1;a1=2;a2=3;ak+3=ak+2+ak+1−2ak.
a0=1;a1=2;a2=3;ak+3=ak+2+ak+1−2ak.
Попытайтесь найти эффективное решение.
-}


seqA :: Integer -> Integer
seqA n | n == 0 = 1
       | n == 1 = 2
       | n == 2 = 3
       | n > 2  =  let
                     recurrently acc1 acc2 acc3 0 = acc1
                     recurrently acc1 acc2 acc3 n = recurrently acc2 acc3 ((acc3 + acc2) - 2*acc1) (n-1)
                   in recurrently 1 2 3 n