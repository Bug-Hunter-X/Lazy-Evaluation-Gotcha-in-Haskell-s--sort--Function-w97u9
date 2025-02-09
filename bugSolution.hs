```haskell
import Data.List (sort)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys --This works as expected

  let zs = [expensiveComputation x | x <- [1..1000000]]
  let ws = sort zs
  print (take 10 ws) --Avoids complete evaluation of the potentially large list

  -- For infinite lists, you need a different strategy entirely, such as using a data structure designed for efficient sorting of infinite sequences or limiting the output to a manageable number of elements.

expensiveComputation :: Int -> Int
expensiveComputation n = let result = sum [1..n] in result --Simulates an expensive computation
```
The solution showcases how to avoid full evaluation by using functions like `take` to limit the number of elements processed from a sorted list, preventing a potential resource exhaustion issue. When dealing with truly infinite lists, more fundamental changes in approach are necessary, often involving specialized data structures or algorithms.