-- moduł solids hs
module Solids where




-- ### 2.4 ###
-- Zdefiniuj moduł Solids (zapisz go w pliku solids.hs) i umieść w nim definicje funkcji z zadania 2.3. Do każdej funkcji dodaj informację o jej typie oraz komentarz opisujący jej działanie. Załaduj moduł Solids do interpretera (polecenie :load lub :l) i przetestuj działanie poszczególnych funkcji.

-- Oblicz objętość kuli
sphereVolume :: Floating a => a -> a
sphereVolume r = 4/3 * pi * r^3

-- Oblicz objętość stożka
coneVolume :: Floating a => a -> a -> a
coneVolume r h = 1/3 * pi * r^2 * h

-- Oblicz objętość prostopadłościanu
cuboidVolume :: Floating a => a -> a -> a -> a
cuboidVolume a b c = a * b * c

-- ### 2.5 ###
-- (*) Do modułu Solids dopisz funkcję wyznaczającą objętość ostrosłupa o podstawie kwadratowej (pyramidVolume). Przetestuj działanie tej funkcji.

-- Oblicz objętość stożka o podstawie kwadratowej
-- Input: bok kwadratu a oraz wysokość h
pyramidVolume :: Floating a => a -> a -> a
pyramidVolume a h = 1/3 * a^2 * h