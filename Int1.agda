module Int1 where

-- import `plus` & `times` on Nats;
-- use these functions where appropriate below.
open import Nat

data Int : Set where
  -- int a b represents (a - b).
  int : Nat → Nat → Int

-- given i, return i + 1.
isuc : Int → Int
isuc (int a b) = int (suc a) b

-- given i, return i - 1.
ipred : Int → Int
ipred (int a b) = int a (suc b)

-- given i, return -i.
ineg : Int → Int
ineg (int a b) = int b a

-- given i & j, return i + j.
iplus : Int → Int → Int
iplus (int ai bi) (int aj bj) = int (plus ai aj) (plus bi bj)

-- given i & j, return i - j.
iminus : Int → Int → Int
iminus (int ai bi) (int aj bj) = int (plus ai bj) (plus bi aj)

-- given i & j, return i * j.
itimes : Int → Int → Int
itimes (int ai bi) (int aj bj) = int (plus (times ai aj) (times bi bj)) (plus (times ai bj) (times bi aj))

