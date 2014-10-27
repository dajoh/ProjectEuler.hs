import Text.Printf

isPrime :: Integer -> Bool
isPrime n
    | n < 2     = False
    | otherwise = all (\x -> n `mod` x /= 0) [2..(n-1)]

main :: IO ()
main = printf "10001st prime: %d\n" $ head $ drop 10000 primes
    where primes = [x | x <- [2..], isPrime x]
