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

    print $ sample03 [1,2,3,4,5,6]
    print $ sample03 [7,9,11]
    print $ sample03 [0,10,21]

    print $ sample04 [1,2,3,4]
    print $ sample04 [10, 0]
    print $ sample04 [5]

    putStrLn $ sample05 3
    putStrLn $ sample05 1
    putStrLn $ sample05 0

    print $ sample06 "わかめ"
    print $ sample06 "こんぶ"
    print $ sample06 "ワカメ"

    putStrLn $ sample07 "Hello" "World"
    putStrLn $ sample07 "Haskell" "Language"
    putStrLn $ sample07 "" "Empty"

    putStrLn $ sample08 "かえる"
    putStrLn $ sample08 "A"
    putStrLn $ sample08 ""

    print $ sample09 0
    print $ sample09 3
    print $ sample09 5

    print $ sample10 [1,2,3,4,5]
    print $ sample10 [2,4,6]
    print $ sample10 [7,9]

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

-- リストの中の偶数だけを取り出す関数を作成する。
-- ただし、リスト内包表記 を使うこと。
sample03 x = [y | y <- x, even y]

-- 与えられたリストの平均を返す関数を作成する。
-- ただし、fromIntegralとlength を使うこと。
sample04 x = (sum x) / fromIntegral(length x)

-- 入力された数だけ「ズコー！」を繰り返す関数を作成する。
-- ただし、replicate を使うこと。
sample05 x = foldl (\acc y -> acc ++ y) "" (replicate x "ズコー！")
sample05' x = concat (replicate x "ズコー！")

-- 与えられた文字列が「わかめ」と一致するかを判定する関数を作成する。
-- ただし、== を使うこと。
sample06 x = if (x == "わかめ") then True else False

-- 2つの文字列をスペース区切りで結合する関数を作成する。
-- ただし、++演算子を使うこと。
sample07 :: String -> String -> String
sample07 x y = x ++ " " ++ y

-- 文字列を受け取り、すべての文字の後ろに「ぴょん」を付けて返す関数を作成する。
-- ただし、map を使うこと。
sample08 x = concat (map(:"ぴょん") x)

-- 整数を入力して、その階乗を求める関数を作成する。
-- ただし、再帰を使うこと。
sample09 0 = 1
sample09 n = n * sample09(n - 1)

-- 整数リストから奇数だけを取り出す関数を作成する。
-- ただし、filter関数を使うこと。
sample10 x = filter odd x
