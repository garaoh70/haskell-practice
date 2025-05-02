-- Day 4：パターンマッチとガード
main = do
    print $ pattern 1
    print $ guard 4
    print $ sign (-15)
    print $ sign 45
    print $ sign 0

pattern 1 = "One"
pattern 2 = "Two"
pattern 3 = "Three"

guard x
  | x == 1 = "uno"
  | x == 2 = "due"
  | x == 3 = "tre"
  | otherwise = "l'altro"

sign :: Int -> String
sign x
  | x > 0 = "Positive"
  | x < 0 = "Negative"
  | otherwise = "Zero"
