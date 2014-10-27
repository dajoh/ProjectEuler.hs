import Data.List
import Text.Printf

squaresUntil :: Integer -> [Integer]
squaresUntil n = takeWhile (<=n) [x*x | x <- [1..]]

isSquare :: Integer -> Bool
isSquare n = elem n $ squaresUntil n

triplets :: [(Integer, Integer, Integer)]
triplets = [(a, b, c) | a <- [1..1000],
                        b <- [a..1000],
                        let c2 = a*a + b*b,
                        let sq = squaresUntil c2,
                        let c  = fromIntegral $ length sq,
                        elem c2 sq]

main :: IO ()
main = printf "Found triplet: (%d, %d, %d) => %d\n" a b c (a*b*c)
    where Just (a, b, c) = find (\(x, y, z) -> x+y+z == 1000) triplets
