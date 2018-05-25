module Math where

-- ### 2.6 ###
{-
	Zdefiniuj moduł Math i umieść w nim definicje funkcji f1,…,f8 określonych jak poniżej. Zdefiniuj funkcje w dwóch wersjach: tradycyjnej i używając sekcji.

	1. f1 zmniejsza pobierany argument o 2; Uwaga: (+(-2))
	2. f2 zwraca resztę z dzielenia argumentu przez 5;
	3. f3 zwraca wynik porównania argumentu z liczbą 10;
	4. f4 zwraca część całkowitą z dzielenia argumentu przez 8;
	5. (*) f5 zwraca True, jeżeli argument jest większy od 100 i False w przeciwnym przypadku;
	6. (*) f6 zwraca resztę z dzielenia liczby 5 przez argument funkcji;
	7. (*) f7 zwraca część całkowitą z dzielenia liczby 8 przez argument funkcji;
	8. (*) f8 potraja pobierany argument.
	Załaduj moduł Math i przetestuj działanie tych funkcji.
-}

-- ### 2.6.1 ###
f1 x = x - 2
f1' = (+(- 2))

-- ### 2.6.2 ###
f2 x = rem x 5
f2' x = x `rem` 5
f2'' = (`rem` 5)

-- ### 2.6.3 ###
f3 x = x == 10
f3' = (== 10)
f3'' = (10 ==)

-- ### 2.6.4 ###
f4 x = div x 3
f4' x = x `div` 3
f4'' = (`div` 3)

-- ### 2.6.5 ###
f5 x = x > 100
f5' = (> 100)

-- ### 2.6.6 ###
f6 x = rem 5 x
f6' x = 5 `rem` x
f6'' = rem 5
f6''' = (5 `rem`)

-- ### 2.6.7 ###
f7 x = div 8 x
f7' x = 8 `div` x
f7'' = div 8
f7''' = (8 `div`)

-- ### 2.6.8 ###
f8' x =  x*3
f8'' x = (*) x 3
f8''' = (* 3)



