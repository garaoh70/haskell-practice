-- Day 4 : リスト処理の応用
main = do
    let dat = [1..10]
    -- 奇数だけ取り出して2倍にする
    print $ sum . map (*2) $ filter odd dat
    print $ foldl (\acc x -> acc + x * 2) 0 $ filter odd dat
    print $ foldr (\x acc -> acc + x * 2) 0 $ filter odd dat
    -- リストの積を計算する
    print $ foldl (\acc x -> acc * x) 1 dat
    print $ foldr (\x acc -> acc * x) 1 dat
