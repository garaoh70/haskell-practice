-- Day:5 Maybe
main = do
    print $ 10 `safetyDiv` 3
    print $ 3 `safetyDiv` 0

safetyDiv :: Int -> Int -> Maybe Int
safetyDiv _ 0 = Nothing
safetyDiv x y = Just(x `div` y)
