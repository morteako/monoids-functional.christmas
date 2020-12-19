# MONOIDS

Have you ever felt that folds like reduce/foldr/foldl are too "low level"?
Because they care about right vs left assoicativity?
Because you have to provide an element where in many cases they are often given?

Then you should meet your lord and saviour, Monoid (and foldMap)

# What are monoids?

Monoid is a concept  from abstract algebra, and is there defined as
a set equipped with an associative binary operation and an identity element.

A binary operation on a set means a function takes two arguments from the set and produces another one.
Being associative means that the grouping of parentheses does not matter, so for a binary operation <> that means that `x <> (y <> z) (x <> y) <> z`.

An identity element is an element of the set that follows `mempty <> x === x` and `x <> mempty === x`.
So it is kind of an "empty" element


Translated into Haskell
    * A Set -> A Type `a`
    * binary operation -> a function `a -> a -> a`
    * identity element -> `mempty : : a`

So implemented in Haskell it becomes (*) 

```haskell
class Monoid a where
    (<>) : : a -> a -> a
    mempty : : a
```

# Why do we care?

foldMap

stimes
stimes

# How do we use them?



# Free monoid - []

# Free 

### Ordering

Left flip flop

### Any - All
 
All and Any are newtypes for monoid instances for (&&) and (||).

There exists another Monoid for Bool that is (sadly?) not in Base.
Namely, Xor.

<!-- newtype Xor = Xor Bool

instance Semigroup Xor where
    Xor True <> Xor True = Xor False
    Xor True <> Xor True = Xor False
 -->

## Min Max


## [a
] - The free monoid

## Lifting Semigroup into Maybe
Lifting a semigroup into a monoid.

### Sum , Product

Sum : newtype for addition with 0 as the identity

# Monoids on functions

instance Monoid b => Monoid (a -> b)

This one is a little fancy

Combine with comparing

rotate = take <> drop
(from stackoverflow)

### Endo

Monoid under function composition


### Const

### Composing monoids

foldMap  (\x -> (Min x, Max x)) [1..10
]


### Ap 

Maybe
List
ZipList


### Alt

Alt Maybe, First Just-valuee
Alt 

## 


## Data structures - Sets, Maps, Trees

