module Math where

-- ### 3.1 ###
{- 
    Zdefiniuj moduł Math i umieść w nim definicję funkcji f określonej następująco:

    dla x < -10 wartość funkcji jest równa kwadratowi liczby x,
    dla -10 ≤ x < 0 wartość funkcji jest równa sinusowi z liczby x,
    dla 0 ≤ x ≤ 2 wartość funkcji jest równa pierwiastkowi z liczby x,
    dla wartości większych niż 2 wartość funkcji nie jest określona (Nie definiujemy jej dla x > 2.).
    Załaduj moduł Math i przetestuj działanie funkcji f. Co się dzieje gdy zostanie ona wywołana z argumentem większym niż 2?
    
    -- INFORMACJE
    -- Nie używać tabulacji tylko spacji
    -- Formatowanie kodu jest istotne dla interpretera
-}


-- Przyklad testowy na if-ach 
-- wymagane else 0 inaczej blad
ftest x = if x < - 10 then x^2
          else if x >= -10 && x < 0 then sin x
          else if x >= 0 && x <= 2 then sqrt x
          else 0    
          
-- definioanie funkcji przez okreslanie przypadkow
-- wywolanie f 3 powoduje exception mowiace o braku wzorow w funkcji
f x | x < -10 = x^2
    | x >= -10 && x < 0 = sin x
    | x >= 0 && x <= 2 = sqrt x
 


 
-- ### 3.2 ###
{-
    Zdefiniuj funkcję factorial wyznaczającą silnię z liczby całkowitej nieujemnej n. Korzystając z funkcji factorial zdefiniuj funkcję binomialCoefficient wyznaczającą wartość symbolu Newtona dla dwóch nieujemnych liczb całkowitych k, n. Funkcje umieść w module Math.
-}

factorial :: Int -> Int
factorial n | n == 0 = 1
            | n > 0 = n * factorial (n-1)

binomialCoefficient k n | k >= 0 && k <= n = factorial(n) `div` (factorial(k)*factorial(n-k))




-- ### 3.3 ###
{-
    (*) Zdefiniuj rekurencyjną funkcję factorial2 wyznaczająca silnię podwójną z liczby całkowitej nieujemnej n:

    n!! = 1 dla n = 0 i n = 1
    n!! = n(n - 2)!! dla n > 1
    Funkcję umieść w module Math.
-}

-- Warunki ustalone wgl definicji w zadaniu
factorial2 :: Int -> Int
factorial2 n | n == 0 = 1
             | n == 1 = 1
             | n > 1 = n * factorial2(n-2)



             
-- ### 3.4 ###
{-
    Zdefiniuj funkcję divides, która jako swoje argumenty przyjmuje dwie liczby całkowite k oraz n (typu Int) i zwraca wartość logiczną:

    True jeśli k dzieli n,
    False w przeciwnym przypadku.
    Wskazówka: W definicji funkcji divides można użyć funkcję rem.

    Funkcję umieść w module Math.
-}
divides :: Integral a => a -> a -> Bool
divides k n | (rem k n) == 0 = True
            | otherwise = False




-- ### 3.5 ###
{-
	Zdefiniuj rekurencyjną funkcję seq', wyznaczającą wartość n-tego wyrazu ciągu liczbowego zdefiniowanego następująco:

	seq_1 = 3
	seq_2 = 4
	seq_n = 0.5*seq_n-1 + 2*seq_n-2, dla n > 2
	Funkcję umieść w module Math.
-}

-- sposob 1
seq' n | n == 1 = 3
       | n == 2 = 4
       | n > 2 = 0.5 * seq'(n-1) + 2 * seq'(n-2)

-- sposob 2 funkcja przez czesci
seq'' 1 = 3
seq'' 2 = 4
seq'' n = 0.5 * seq'(n-1) + 2 * seq'(n-2)




-- ### 3.6 ###
{-
	(*) Zdefiniuj własną funkcję gcd' (największy wspólny dzielnik). Implementacja ma się opierać na algorytmie Euklidesa. Można stosować wyłącznie operatory relacyjne i operator odejmowania. Funkcję umieść w module Math.
-}

gcd'' a b =
  if a > b then
    gcd'' (a-b) b
  else if a < b then
    gcd'' a (b-a)
  else
	a

gcd' a 0 = a
gcd' 0 b = b
gcd' a b = gcd' b (a `rem` b)




-- ### 3.7 ###
{- 
	Zdefiniuj operator ><, który przyjmuje jako argumenty dwie liczby całkowite a oraz b i zwraca wartość logiczną określającą czy liczby a, b są względnie pierwsze. Operator umieść w module Math.

	Wskazówka: Liczby a i b są względnie pierwsze jeżeli ich największym wspólnym dzielnikiem jest 1.
-}

(><) :: Int -> Int ->  Bool
a >< b = gcd a b == 1

