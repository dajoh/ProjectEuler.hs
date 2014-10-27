import Data.List
import Text.Printf

test :: Integer -> Bool
test n = all (\x -> n `mod` x == 0) [3,6,7,8,9,11,12,13,14,15,16,17,18,19]

main :: IO ()
main = printf "Found number: %d\n" number
    where numbers       = [x*20 | x <- [1..]]
          (Just number) = find (test) numbers
