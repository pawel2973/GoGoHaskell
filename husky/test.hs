-- Grupa 7
module Group7 where
-- ### 1 ###
data Quadrant = I | II | III | IV deriving Show
quadrant :: (Int, Int) -> Quadrant
quadrant (0,0) = error "the point lies on the origin"
quadrant (_,0) = error "the point lies on the axis x"
quadrant (0,_) = error "the point lies on the axis y"
quadrant (x,y) | x > 0 && y > 0 = I
               | x < 0 && y > 0 = II
               | x < 0 && y < 0 = III
               | x > 0 && y < 0 = IV

-- ### 2 ###
iloczyn n = product(map (\n -> 2*n) [1..n]) 

sume :: [Double] -> Double
sume [] = 0
sume (n:ns) = (sqrt n)-1/n + sume ns

-- ### 3 ###
cyfra :: Char -> Bool
cyfra x = x >= '0' && x <= '9'

-- ### 4 ###
sumEven :: Integral a => [a] -> a
sumEven [] = 0
sumEven (x:xs) | x `rem` 2 == 0 = x + sumEven xs
               | otherwise = sumEven xs
               

-- gr 8
-- ### 1 ###
infixl 4 ##
(##) :: (Int, Int) -> (Int, Int) -> Bool
(x1, y1) ## (x2, y2) = (x1 == x2 || y1 == y2) && (not(x1 == x2) || not(y1 == y2))

-- ### 2 ###
oddElements :: [t] -> [t]
oddElements [] = []
oddElements (x:_:xs) = x : oddElements xs
oddElements (x:xs) = x : oddElements xs

-- ### 3 ###
litera :: Char -> Bool
litera x | x >= 'a' && x <= 'z' = True
         | x >= 'A' && x <= 'Z' = True
         | otherwise = False
         
-- ### 4 ###
ilo [] = 0
ilo (x:xs) = (x+1)/(x^3) + ilo xs
sumo n = sum (map(\i -> 2*i-1) [1..n])

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
list2tree x = Node (x !! h) (list2tree (take h x)) (list2tree(drop(h+1) x))
              where h = length x `div` 2