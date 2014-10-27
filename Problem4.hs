import Text.Printf

palindrome :: Integer -> Bool
palindrome n = reverse (show n) == show n

main :: IO ()
main = printf "Largest palindrome: %d\n" $ maximum palindromes
    where factors     = [100..999]
          products    = [x*y | x <- factors, y <- factors]
          palindromes = filter (palindrome) products
