module CheckYourself where
import Data.Char

-- 3.3
factorial2 n | n == 0 || n == 1 = 1
             | n > 1 = n * factorial2(n-2)
             
-- 3.6
gcd' a b | a > b = gcd' (a-b) b
         | a < b = gcd' a (b-a)
         | otherwise = a
         

-- 3.7
infixl 5 ><
(><) :: Int -> Int -> Bool 
a >< b = (gcd a b) == 1

-- 3.8
infixl 6 +.
(+.) :: (Double, Double) -> (Double, Double) -> (Double, Double)
(a,b) +. (c,d) = (a+c, b+d)

infixl 6 *.
(*.) :: (Double, Double, Double) -> (Double, Double, Double) -> Double
(a, b, c) *. (d, e, f) = a*d + b*e + c*f

-- 4.1
sumOfSquares [] = 0
sumOfSquares x = sum(map (^2) x)

sumOfSquares1 [] = 0
sumOfSquares1 (x:xs) = x^2 + sumOfSquares1 xs


-- 4.2.1
sum1 [] = 0
sum1 (x:_:xs) = x + sum1 xs
sum1 (x:xs) = x

-- 4.2.2
sum2 [] = 0
sum2 (_:x:xs) = x + sum2 xs
sum2 (x:xs) = 0

-- 4.2.3
sum3 [] = 0
sum3 (_:_:x:xs) = x + sum3 xs
sum3 (x:xs) = 0

-- 4.3.1
countLower :: String -> Int
countLower [] = 0
countLower (x:xs) | x >= 'a' && x <= 'z' = 1 + countLower xs
                  | otherwise = countLower xs
                
-- 4.3.2
countLowerUpper :: String -> (Int, Int)
countLowerUpper [] = (0,0)
countLowerUpper xs = (length (filter isLower xs), length (filter isUpper xs))
                  
-- 4.4
string2bools :: [Char] -> [Bool]
string2bools [] = []
string2bools (x:xs) = isLower x : string2bools xs

-- 4.5
cgtx :: Int -> [Int] -> Int
cgtx x [] = 0
cgtx x (y:ys) | y > x = 1 + cgtx x ys
              | otherwise = cgtx x ys
              
-- 4.5
gtx :: Int -> [Int] -> [Int]
gtx x [] = []
gtx x (y:ys) | y > x = y : gtx x ys
             | otherwise = gtx x ys
             
-- 4.6
string2int :: String -> Int
string2int x = read x

-- 4.7
f3 n = sum ( map (\i -> 1/(i^2)) [1..n])


data Tree a = Leaf a
            | Node a (Tree a) (Tree a)
            | Null

elemTree :: Ord a => a -> Tree a -> Bool
elemTree e Null = False 
elemTree e (Leaf x) = e == x
elemTree e (Node x left right) | e == x = True
                               | e > x = elemTree e right
                               | e < x = elemTree e left 
                              
list2tree :: (Ord x) => [x] -> Tree x
list2tree [] = Null
list2tree [x] = Leaf x
list2tree x = Node (x !! h) (list2tree (take h x)) (list2tree (drop(h+1) x))
                   where h = length x `div` 2
