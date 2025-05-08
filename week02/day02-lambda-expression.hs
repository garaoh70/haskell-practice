-- Day 2 : ラムダ式
main = do
    print $ map (\x -> x * 2 + 1) [1..5]
    print (map lambda01 [1..5])

lambda01 = \x -> x * x