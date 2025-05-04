-- Day 6：リスト操作の練習
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Avoid lambda" #-}

import Debug.Trace (trace)

main = do
    print $ map (*2) data'
    print $ filter(>5) data'
    print "----------"
    print $ foldl (\acc x -> trace ("x=" ++ show x ++ ", acc=" ++ show acc ++ ", sum=" ++ show (acc + x) ) acc + x) 0 (take 5 data')
    print "----------"
    print $ foldr (\x acc -> trace ("x=" ++ show x ++ ", acc=" ++ show acc ++ ", sum=" ++ show (acc + x) ) acc + x) 0 (take 5 data')
 
data' = [1..10]
