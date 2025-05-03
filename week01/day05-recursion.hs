-- Day 5 : 再帰関数の入門
main = do
    print (fact 5)
    print (sum' 100)

fact 0 = 1
fact n = n * fact (n - 1)

sum' 0 = 0
sum' n = n + sum' (n - 1)