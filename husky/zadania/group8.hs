module Group8 where

-- ### 1 ###
-- polozenie punktow nie moze byc identyczne, poniewaz nie da sie okreslic polozenia prostej wzgledem osi x lub y
infixl 4 ##
(##) :: (Int, Int) -> (Int, Int) -> Bool
(x1, y1) ## (x2, y2) = ((x1 == x2 || y1 == y2)) && ( not(x1 == x2) || not(y1 == y2) ) 

-- ### 2 ###
oddElements :: [t] -> [t]
oddElements [] = []
oddElements (x:_:xs) = x : oddElements xs
oddElements (x:xs) = x : xs

-- ### 3 ###
litera :: Char -> Bool
litera x = (x >= 'a' && x <= 'z') || (x >= 'A' && x <= 'Z')

-- ### 4 ###

-- do poprawy
iloczyn (x:xs) =  (\ i -> (i+1)/(i^3)) x * iloczyn xs
iloczyn [] = 1
