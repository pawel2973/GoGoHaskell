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
      
{-
    *Group7> quadrant (1,1)
    I
    *Group7> quadrant (-1,1)
    II
    *Group7> quadrant (-1,-1)
    III
    *Group7> quadrant (1,-1)
    IV
-}




-- ### 2 ###
-- 2.a
-- lis n = map (2*) [1..n]
iloczyn :: Int -> Int
iloczyn n = product(map (2*) [1..n])

{-
    *Group7> iloczyn 1
    2
    *Group7> iloczyn 2
    8
    *Group7> iloczyn 3
    48
    *Group7> iloczyn 4
    384
-}

-- 2.b
suma :: [Double] -> Double
suma [] = 0
suma (x:xs) = (\ i -> (sqrt i)-1/i) x + suma xs  


-- ### 3 ###
cyfra :: Char -> Bool
cyfra x | x >= '0' && x <='9' = True
        | otherwise = False
        
-- ## 4 ##
sumEven :: Integral a => [a] -> a
sumEven [] = 0
sumEven (_:x:xs) = x + sumEven xs
sumEven (x:xs) = 0

-- ## 5 ##

data Tree a = Leaf a
            | Node a (Tree a) (Tree a)
            | Null
