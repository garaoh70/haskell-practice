-- Day 2 : 基本の型と関数定義
main = do
    let bool = True :: Bool
    let char = 'a' :: Char
    let string = "ABC" :: String
    let int = 42 :: Int
    let long = 4242 :: Integer
    let float = 3.14 :: Float
    let double = 3.1415928979 :: Double

    print bool
    print char
    print string
    print int
    print long
    print float
    print double
    print $ add 3 4
    print $ divide 1 8

add :: Int -> Int -> Int
add x y = x + y

divide :: Float -> Float -> Float
divide x y = x / y
