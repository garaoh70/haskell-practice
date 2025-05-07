-- Day 1 : 高階関数
main = do
    print $ applyTwice (+3) 10
    print $ applyTwice (+3) 0

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)