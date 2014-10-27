import Text.Printf

main :: IO ()
main = printf "The sum: %d\n" result
    where fibs   = 0 : 1 : zipWith (+) fibs (tail fibs)
          result = sum $ filter (even) $ takeWhile (<=4000000) fibs :: Integer
