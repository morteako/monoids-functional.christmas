
import Control.Applicative
import Data.Monoid
import Data.Foldable


data Sorted = None | Both | Down | Up
    deriving Show

instance Semigroup Sorted where
  x <> y = case x of
    None -> None
    Both -> y
    Down -> case y of
      Up   -> None
      None -> None
      _    -> Down
    Up -> case y of
      Down -> None
      None -> None
      _    -> Up


instance Monoid Sorted where
  mempty = Both

p :: Ord a => [a] -> [Sorted]
p = zipWith toSorted <*> tail

pp :: Ord a => [a] -> Sorted
pp = fold . p

toSorted x y = case compare x y of
                LT -> Up
                EQ -> Both
                GT -> Down

-- f [] = Both
-- f [x] = Both
-- f (x:y:xs) = r <> f (y:xs)


main = do
    print $ foldMap (Ap . Just) ["hei","hopp"]
    print $ foldMap Ap $ map Just ["hei","hopp"] ++ [Nothing]

    -- print $ f [1..5]
    print $ p [5,4..1]
    print $ take 10 $ p (10:[1..])
    -- print $ p (10:[1..])
    print $ foldr (<>) Both (repeat None)
    print $ foldMap id (repeat None)

    print $ foldMap Ap [["1","2","3"],["4","5","6"]]
    print $ foldMap Ap $ [["1","2","3"], ["4","5","6"]]

    print $ foldMap (Ap  [Just "hei", 