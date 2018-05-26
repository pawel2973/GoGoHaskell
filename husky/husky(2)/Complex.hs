module Complex where

-- ### 3.8 ###
{-
	(*) Przyjmijmy, że liczba zespolona jest zapisywana jako para liczb typu Double. Zaimplementuj moduł Complex zawierający:

	operator dodawania liczb zespolonych (+.);
	operator odejmowania liczb zespolonych (-.);
	operator mnożenia liczb zespolonych (*.);
	funkcje re i im zwracające część całkowitą i urojoną liczby zespolonej;
	funkcję i zwracającą jako wynik jednostkę urojoną.
-}

-- operator dodawania liczb zespolonych (+.)
infixl 6 +.
(+.) :: (Double, Double) -> (Double, Double) -> (Double, Double)
(a, b) +. (c, d) = (a+c, b+d)

-- operator odejmowania liczb zespolonych (-.)
infixl 6 -.
(-.) :: (Double, Double) -> (Double, Double) -> (Double, Double)
(a, b) -. (c,d) = (a-c, b-d)

-- operator mnożenia liczb zespolonych (*.)
infix 6 *.
(*.) :: (Double, Double) -> (Double, Double) -> (Double, Double)
(a, b) *. (c, d) = (a*c, b*d)

-- funkcja re
re (a, b) = a

-- funkcja im
im (a,b) = b

-- funkcję i zwracającą jako wynik jednostkę urojoną.
i :: (Double,Double)
i=(0,1)
