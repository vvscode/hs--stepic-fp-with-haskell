module Test where
import Data.List hiding (union)
import Data.Set

myUnion [] ys = ys
myUnion xs ys = union xs ys

{-

[1 of 1] Compiling Test             ( 2.6/test.hs, interpreted )

2.6/test.hs:6:23:
    Couldn't match expected type ‘Set a’ with actual type ‘[t]’
    Relevant bindings include
      ys :: Set a (bound at 2.6/test.hs:6:12)
      xs :: [t] (bound at 2.6/test.hs:6:9)
      myUnion :: [t] -> Set a -> Set a (bound at 2.6/test.hs:5:1)
    In the first argument of ‘union’, namely ‘xs’
    In the expression: union xs ys
Failed, modules loaded: none.
-}
