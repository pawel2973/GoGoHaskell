module Triangle where

-- ### 2.7 ###
{- 
	(*) Zdefiniuj moduł Triangle i umieść w nim definicje funkcji trArea1, trArea2 i trArea3, które wyznaczają pole powierzchni trójkąta, przy czym każda z tych funkcji wykorzystuje inny wzór na pole trójkąta.
-}

-- trArea1
trArea1 :: Floating a => a -> a -> a
trArea1 a h = (1/2) * a * h

-- trArea2
trArea2 :: Floating a => a -> a -> a -> a
trArea2 a b kat = (1/2) * a * b * sin(kat * (pi/180))

-- trArea3
trArea3 :: Floating a => a -> a -> a -> a
trArea3 a b c = sqrt(p*(p-a)*(p-b)*(p-c))
        where p = (a+b+c)/2

