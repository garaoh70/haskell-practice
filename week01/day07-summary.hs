{-# LANGUAGE OverloadedStrings #-}

import System.IO
import GHC.IO.Encoding

-- Day 7：1週間まとめ
main = do
    setLocaleEncoding utf8
 
    print $ sample01 (-5)
    print $ sample01 3
    print $ sample01 0

    putStrLn $ sample02 "Hello"
    putStrLn $ sample02 "世界"
    putStrLn $ sample02 "ABC"

-- 整数を入力して絶対値を返す関数を作成する。
-- ただし、関数内で ガード を使うこと。
sample01 x
    | x > 0 = x
    | x < 0 = (-x)
    | otherwise = 0

-- 文字列を逆さまにして、先頭に「うぎゃー！」をつける関数を作成する。
-- ただし、reverse と ++ を使うこと。
sample02 :: String -> String
sample02 x = "うぎゃー！" ++ (reverse x)