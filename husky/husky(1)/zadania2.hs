-- ### 2.1 ###
-- Uruchom interpreter języka Haskell (polecenie ghci). Wyznacz wartości następujących wyrażeń (zapisz je zgodnie ze składnią języka Haskell)

-- Rozwiazanie
{-
Prelude> 2^100
1267650600228229401496703205376

Prelude> (12+23)*(40-21)
665

Prelude> (2^100)/((12+23)*(40-21))
1.9062415041026007e27

Prelude> sqrt 2
1.4142135623730951


Prelude> sqrt ((12+23)*(40-21))
25.787593916455254

Prelude> 2+ -3
<interactive>:12:1: error:
    Precedence parsing error
        cannot mix ‘+’ [infixl 6] and prefix `-' [infixl 6] in the same infix expression
	
Prelude> 2+(-3)
-1
-}




-- ### 2.2.1 ###
-- Korzystając z funkcji rem sprawdź, które z liczb z 2, 3, 4 są podzielnikami liczby 1234
{-
Prelude> rem 1234 2
0

Prelude> rem 1234 3
1

Prelude> rem 1234 4
2
-}




-- ### 2.2.2 ###
-- (*) Korzystając z funkcji rem sprawdź, czy 113 jest liczbą pierwszą.
-- Sprawdzamy wszystkie dzielniki liczby 113 do maksymalnej wartosci dzielnika sqrt 113

{-
Prelude> sqrt 113
10.63014581273465
Prelude> 113 `rem` 1
0
Prelude> 113 `rem` 2
1
Prelude> 113 `rem` 3
2
Prelude> 113 `rem` 4
1
Prelude> 113 `rem` 5
3
Prelude> 113 `rem` 6
5
Prelude> 113 `rem` 7
1
Prelude> 113 `rem` 8
1
Prelude> 113 `rem` 9
5
Prelude> 113 `rem` 10
3
Prelude> 113 `rem` 113
0
-}
-- liczba dzieli sie tylko przez 1 i sama siebie wiec jest pierwsza!




-- ### 2.3 ###
-- Korzystając z polecenia let zdefiniuj funkcje wyznaczające
-- 1. objętość kuli (sphereVolume);
-- 2. objętość stożka (coneVolume);
-- 3. (*) objętość prostopadłościanu (cuboidVolume).
-- Przetestuj działanie tych funkcji na przykładowych danych.

{-
Prelude> let sphereVolume r = 4/3 * pi * r^3
Prelude> sphereVolume 2
33.510321638291124

Prelude> let coneVolume r h = 1/3 * pi * r^2 * h
Prelude> coneVolume 2 2
8.377580409572781

Prelude> let cuboidVolume a b c = a * b * c
Prelude> cuboidVolume 5 3 9
135
-}