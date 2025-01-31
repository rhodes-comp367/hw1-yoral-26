module Int2 where

-- import `plus` & `times` on Nats;
-- use these functions where appropriate below.
open import Nat

data Int : Set where
  -- (+ n) represents positive n.
  + : Nat → Int
  -- (- n) represents negative n.
  - : Nat → Int
  -- 0 can be represented as (+ zero) or (- zero).

-- given i, return i + 1.
isuc : Int → Int
isuc (+ n) = + (suc n)
isuc (- zero) = + (suc zero)
isuc (- (suc n)) = - n

-- given i, return i - 1.
ipred : Int → Int
ipred (+ ( suc n)) = + n
ipred (+ zero) = + (suc zero)
ipred (- zero) = - (suc zero)
ipred (- (suc n)) = - n

-- given i, return -i.
ineg : Int → Int
ineg (+ n) = - n
ineg (- n) = + n

-- given i & j, return i + j.
iplus : Int → Int → Int
iplus (+ zero) n = n
iplus (- zero) n = n
iplus n (+ zero) = n
iplus n (- zero) = n
iplus (- (suc n)) (- (suc m)) = - (suc (plus n m))
iplus (+ (suc n)) (- (suc m)) = - (suc (plus m n))
iplus (+ (suc n)) (+ (suc m)) = + (suc (plus n m))
iplus (- (suc n)) (+ (suc m)) = + (suc (plus m n))

-- given i & j, return i - j.
iminus : Int → Int → Int
iminus (+ zero) n = n
iminus (- zero) n = n
iminus n (+ zero) = n
iminus n (- zero) = n
iminus (- (suc n)) (- (suc m)) = - (suc (plus m n))
iminus (+ (suc n)) (- (suc m)) = + (suc (plus n m))
iminus (+ (suc n)) (+ (suc m)) = - (suc (plus m n))
iminus (- (suc n)) (+ (suc m)) = - (suc (plus n m))

-- given i & j, return i * j.
itimes : Int → Int → Int
itimes (+ zero) n = + zero
itimes (- zero) n = - zero
itimes n (+ zero) = + zero
itimes n (- zero) = - zero
itimes (- (suc n)) (- (suc m)) = + (suc (times n m))
itimes (+ (suc n)) (- (suc m)) = - (suc (times n m))
itimes (+ (suc n)) (+ (suc m)) = + (suc (times n m))
itimes (- (suc n)) (+ (suc m)) = - (suc (times n m))

