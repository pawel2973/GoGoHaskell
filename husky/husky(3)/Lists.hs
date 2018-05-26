module Lists where
import Data.Char



-- ### 4.1 ###
{-
    Utwórz moduł Lists i zdefiniuj w nim funkcję sumOfSquares, która jako argument przyjmuje listę liczb i zwraca sumę ich kwadratów. Funkcja zwraca wartość 0 jeśli lista jest pusta. Zdefiniuj funkcję na dwa sposoby:

    1. korzystając z funkcji standardowych (sum i map);
    2. rekurencyjnie.
-}

-- funkcje standardowe
-- sum //sumuje elementy listy
-- map // 1 argument to funkcja dzialajaca na wszystkie elementy listy podanej jako 2 argument
sumOfSquares :: [Float] -> Float
sumOfSquares [] = 0
sumOfSquares input = sum(map (^2) input)

-- rekurencyjnie
{-
Ciekawy przyklad
sumOfSquares' (x:xs) = x - sumOfSquares' xs

    sumOfSquares [1,1,1] = 1
    s[1,1,1] = 1 - s[1,1]  // s[1,1,1] = 1
    s[1,1]   = 1 -   s[1]  // s[1,1]   = 0
    s[1]     = 1 -      0  // s[1]     = 1
-}

sumOfSquares' :: [Float] -> Float
sumOfSquares' [] = 0
sumOfSquares' (x:xs) = x^2 + sumOfSquares' xs
{- 
    sumOfSquares' [1,2,3]
    s[1,2,3] = 1^2 + s[2,3]     //1 + 13  = 14
    s[2,3] = 2^2 + s[3]         //4 + 9   = 13
    s[3] = 3^2 + 0              //9
    
-}




-- ### 4.2 ###
{-
    W module lists zdefiniuj:

    1. funkcję sum1, która jako argument przyjmuje listę liczb i zwraca sumę elementów o indeksach nieparzystych;   
    2. (*) funkcję sum2, która jako argument przyjmuje listę liczb i zwraca sumę elementów o indeksach parzystych;
    3. (*) funkcję sum3, która jako argument przyjmuje listę liczb i zwraca sumę elementów o indeksach 3, 6, 9, …;
    Wszystkie funkcje zdefiniuj jako polimorficzne.
-}

-- 4.2.1
-- Adnotacja: Stosowany jest pierwszy napotkany przypadek, który jest mozliwy do wykonania
sum1 :: [Double] -> Double

sum1 (x:_:xs) = x + sum1 xs
sum1 (x:xs) = x

{- 
    sum1[1,2,3] = 1 + [3]   //4     (x:_:xs) = x + sum1 xs
    sum1[3] = 3 + 0         //3     (x:xs) = x
    -- Można zauważyć, że ostatnia definicja funkcji przez części ma sens w przypadku listy o nieparzystej ilości elementów
-}

-- 4.2.2
sum2 :: [Double] -> Double
sum2 [] = 0 -- lista pusta zwraca zero !!!
sum2 (_:x:xs) = x + sum2 xs
sum2 (x:xs) = 0 -- lista nieparzysta

-- 4.2.3
sum3 :: [Double] -> Double
sum3 [] = 0
sum3 (_:_:x:xs) = x + sum3 xs
sum3 (x:xs) = 0

-- sposób2
sum3' :: [Double] -> Double
sum3' [] = 0
sum3' [_] = 0
sum3' [_ , _] = 0
sum3' (_:_:x:xs) = x + sum3' xs




-- ### 4.3 ###
{-
    1. Zdefiniuj funkcję countLower wyznaczającą liczbę małych liter w przekazanym jej tekście wejściowym.
    2. (*) Zdefiniuj funkcję countLowerUpper, wyznaczającą liczbę małych i wielkich liter w przekazanym jej tekście wejściowym. Funkcja powinna być następującego typu countLowerUpper :: String → (Int, Int).
    Funkcje umieść w module Lists.
-}

-- 4.3.1
countLower :: [Char] -> Int
countLower [] = 0
countLower (x:xs) | x >= 'a' && x <= 'z' = 1 + countLower xs
                  | otherwise = countLower xs

-- 4.3.2
-- Funkcja filter usuwa z listy elementy nie spełniaj ˛ace wskazanego predykatu logicznego w naszym przpadku isLower dla kazdego znaku textu, bo oczywiscie text jest lista
--  length xs – zwraca długosc listy xs;
countLowerUpper1 :: String -> (Int,Int)                        
countLowerUpper1 [] = (0,0)                    
countLowerUpper1 text = (length (filter isLower text),length (filter isUpper text))




-- ### 4.4 ###
{-
    (*) Zdefiniuj funkcję string2bools, która listę znaków zastępuje listą wartości logicznych określających, czy oryginalny element był małą literą, czy też nie. Funkcję umieść w module Lists.

    Wskazówka:
    Do modułu Lists poniżej słowa where dodaj poniższą linię:
    import Data.Char
-}
string2bools2 :: [Char] -> [Bool]
string2bools2 [] = []
string2bools2 (x:xs) = isLower x : string2bools2 xs

-- Lepsze rozwiązanie jeżeli podamy inne znaki niz litery
string2bools [] = []
string2bools (x:xs) | x >= 'a' && x <= 'z' = True : string2bools xs
           | x >='A' && x <= 'Z' = False : string2bools xs
           | otherwise = string2bools xs -- jezeli co innego niz litery

           
           
           
-- ### 4.5 ###
{-
	W module lists zdefiniuj funkcje, które jako argumenty przyjmują liczbę x i listę liczb tego samego typu i które jako wynik zwracają:

	1. funkcja cgtx liczbę elementów listy większych od x;
	2. (*) funkcja cltx liczbę elementów listy mniejszych od x;
	3. funkcja gtx listę elementów z listy wejściowych większych od x;
	4. (*) funckja ltx listę elementów z listy wejściowych mniejszych lub równych x.
-}

-- 4.5.1
cgtx :: Int -> [Int] -> Int
cgtx x [] = 0
cgtx x (y:ys) | x < y = 1 + cgtx x ys
              | otherwise = cgtx x ys

-- 4.5.2
cltx :: Int -> [Int] -> Int
cltx x [] = 0
cltx x (y:ys) | x > y = 1 + cltx x ys
              | otherwise = cltx x ys

-- 4.5.3
gtx :: Int -> [Int] -> [Int]
gtx x [] = []
gtx x (y:ys) | x < y  = y : gtx x ys
             | otherwise = gtx x ys

-- 4.5.4
--ltx :: 










