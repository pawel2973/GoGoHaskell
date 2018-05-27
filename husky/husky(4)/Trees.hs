module Trees where

data Tree a = Leaf a
            | Node a (Tree a) (Tree a)
            | Null


-- ### 5.6 ###
{-
    1. (*) Do modułu Trees dodaj funkcję elemTree ze slajdu 56. Popraw funkcję tak, aby uwzględniała konstruktor Null.
    2. (*) W module Trees zaimplementuj funkcję countLeaves zwracającą informację o liczbie liści w drzewie.
-}

-- 5.6.1 !!
elemTree :: Ord a => a -> Tree a -> Bool
elemTree e Null = False
elemTree e (Leaf x) = e == x
elemTree e (Node x left right) | e == x = True
                               | e < x = elemTree e left
                               | e > x = elemTree e right

                                                        
-- 5.6.2
countLeaves :: Tree a -> Int
countLeaves (Leaf _) = 1
countLeaves (Node _ left right) = countLeaves left + countLeaves right
countLeaves Null = 0

                                                    
-- ### 5.7 ###
{-
    1. (*) W module Trees zaimplementuj funkcję tree2list przekształcającą drzewo na uporządkowaną listę wartości.
    2. (*) W module Trees zaimplementuj funkcję list2tree przekształcającą uporządkowaną listę na zrównoważone drzewo binarne - wysokość prawego i lewego poddrzewa dla każdego węzła mogą się różnić co najwyżej o 1.
-}

-- 5.7.1
tree2list Null = []
tree2list (Leaf x) = [x]
tree2list (Node x left right) = (tree2list left) ++ [x] ++ (tree2list right)

-- 5.7.2 !!
list2tree :: (Ord x) => [x]-> Tree x
list2tree [] = Null
list2tree [x] = Leaf x
list2tree x = Node (x !! h) (list2tree (take h x)) (list2tree (drop (h+1) x))
                   where 
                      h = length x `div` 2
