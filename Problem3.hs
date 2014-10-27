import Data.List
import Text.Printf

largestPrimeFactor :: Integer -> Integer
largestPrimeFactor x
    | d == x    = x
    | otherwise = largestPrimeFactor (x `div` d)
    where (Just d) = find (\n -> x `mod` n == 0) [2..x]

main :: IO ()
main = printf "Largest prime factor: %d\n" $ largestPrimeFactor 600851475143
