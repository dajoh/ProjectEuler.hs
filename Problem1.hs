import Text.Printf

main :: IO ()
main = printf "The sum: %d\n" result
    where result = sum [x | x <- [0..999], x `mod` 3 == 0 ||
                                           x `mod` 5 == 0] :: Integer
