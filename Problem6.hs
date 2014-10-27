import Text.Printf

main :: IO ()
main = printf "Difference: %d\n" (sqsum - sumsq :: Integer)
    where sumsq = sum [x*x | x <- [1..100]]
          sqsum = sum [1..100] ^ 2
