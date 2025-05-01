-- Day : 3 リストとタプルを学ぶ
main = do
    let _list = [1 .. 100] :: [Int]
    let _first = head _list
    let _last = last _list

    print $ _list !! 2
    print _first
    print _last
    print $ sum2 _list

    let _touple = (1970, 2025) :: (Int, Int)
    print _touple
    print $ swap _touple

swap :: (Int, Int) -> (Int, Int)
swap (x, y) = (y, x)

sum2 :: [Int] -> Int
sum2 x = sum x
