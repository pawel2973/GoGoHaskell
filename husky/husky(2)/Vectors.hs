module Vectors where

-- ### 3.9 ###
{-
	(*) Przyjmijmy, że wektor w przestrzeni R^3 jest zdefiniowany jako trójka liczb typu Double. Zaimplementuj moduł Vectors zawierający:

	operator dodawania wektorów (+.);
	operator odejmowania wektorów (-.);
	operator mnożenia skalarnego wektorów (*.);
	operator mnożenia wektorowego wektorów (***).
-}

-- 	operator dodawania wektorów (+.)
infixl 6 +.
(+.) :: (Double, Double, Double) -> (Double, Double, Double)  -> (Double, Double, Double) 
(a, b, c) +. (d, e, f) = (a+d, b+e, c+f)

-- operator odejmowania wektorów (-.)
infixl 6 -.
(-.) :: (Double, Double, Double) -> (Double, Double, Double)  -> (Double, Double, Double) 
(a, b, c) -. (d, e, f) = (a-d, b-e, c-f)

-- operator mnożenia skalarnego wektorów (*.)
infixl 6 *.
(*.) :: (Double, Double, Double) -> (Double, Double, Double)  -> Double 
(a, b, c) *. (d, e, f) = a*d + b*e + c*f

-- operator mnożenia wektorowego wektorów (***)
infixl 6 ***
(***) :: (Double, Double, Double) -> (Double, Double, Double)  -> (Double, Double, Double) 
(a1, a2, a3) *** (b1, b2, b3) = (a2*b3-a3*b2, a3*b1-a1*b3, a1*b2-a2*b1) 