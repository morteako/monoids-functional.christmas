import Data.Foldable
-- import Data.Monoid hiding (First,Last)
import Data.Semigroup
import Control.Applicative

1
:set +m

:{

:}

fold [Just "hi",Nothing, Just "ho"]

-- :{
-- data Person {
--     name :: String,
--     age :: Int,
--     eyes :: Int
-- } deriving Show
-- :}

foldMap All [1==1, True]

Any False <> Any True

foldMap (\x ->(Just $ First x, Just $ Last x)) [1..5]

Alt (Just "hei") <> Alt (Just "hopp")

Just "heei" <|> Just "hopp"


foldMap (Just . Max) [1..5]
foldMap (Just . Min) []


