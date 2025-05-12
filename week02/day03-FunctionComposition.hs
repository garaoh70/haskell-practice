-- Day 3 : 関数合成とポイントフリースタイル
main = do
    let dat = [5, -3, -6, 7, -3, 2, -19, 24]
    -- 配列の要素を全て負の値に変換する
    print $ map(\x -> negate (abs x)) dat
    -- 関数合成
    print $ map(negate . abs) dat

    -- ポイントフリースタイル(奇数の平方根のうち10000より小さい数の総和を求める)
    print $ sum . takeWhile(<10000) $ map (^2) (filter odd [1..])
    -- 結果が同じなら、順番を入れ替えて読みやすくするのだそうです！！
    -- Haskell の世界は奥が深い
    print $ sum . takeWhile(<10000) . filter odd $ map (^2) [1..]
