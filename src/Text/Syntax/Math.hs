-----------------------------------------------------------------------------
--
-- Module      :  Text.Syntax.Math
-- Copyright   :  John Morrice <spoon@killersmurf.com>
-- License     :  GPL-3 
--
-- Maintainer  :  John Morrice <spoon@killersmurf.com>
-- Stability   :
-- Portability :
--
-- | Provide mathematical and logic symbols for snm
--
-----------------------------------------------------------------------------

module Text.Syntax.Math 
   (math) where

import Text.Syntax.Simple

import Data.Dynamic

import Text.XHtml.Strict

import Data.Either

-- | Highlight mathematical symbols
math :: Dynamic
math = highlight "snmmath:Text.Syntax.Math.math" syms

m :: String -> String -> (String, String, String)
m sym out = (sym, "math_symbol", out)

syms :: [(String, String, String)]
syms = 
   [ m "forall" "∀"
   , m "unique" "∃!"
   , m "forsome" "∃"
   , m "member" "∈"
   , m "!member" "∉"
   , m "subset" "⊆"
   , m "ssubset" "⊂"
   , m "superset" "⊇"
   , m "ssuperset" "⊃"
   , m "union" "∪"
   , m "intersection" "∩"
   , m "implies" "⇒"
   , m "=>" "⇒"
   , m "->" "→"
   , m "|->" "↦"
   , m "therefore" "∴"
   , m "{}" "∅"
   , m "root" "√"
   , m "!=" "≠"
   , m ">=" "≥"
   , m "<=" "≤"
   , m "or" "∨"
   , m "xor" "⊕"
   , m "(+)" "⊕"
   , m "and" "∧"
   , m "iff" "⇔"
   , m "<=>" "⇔"
   , m "top" "⊤"
   , m "bottom" "⊥"
   , m "orthogonal" "⊥"
   , m "coprime" "⊥"
   , m "*" "·"
   , m "<<" "≪"
   , m ">>" "≫"
   , m "karp" "≺"
   , m "varies" "∝"
   , m "o<" "∝"
   , m "/" "÷"
   , m "+-" "±"
   , m "-+" "∓"
   , m "!|" "∤"
   , m "aleph" "ℵ"
   , m "beth" "ℶ"
   , m "approx" "≈"
   , m "wreath" "≀"
   , m "ideal" "◅"
   , m "antijoin" "▻"
   , m "<|" "◅"
   , m "|>" "▻"
   , m "semidirect_product" "⋉"
   , m "semijoin" "⋊"
   , m "|><" "⋉"
   , m "><|" "⋊"
   , m "natural_join" "⋈"
   , m "|><|" "⋈"
   , m "because" "∵"
   , m "qed" "∎"
   , m "congruent" "≅"
   , m "(.)" "∘"
   , m "infinity" "∞"
   , m "sum" "∑"
   , m "product" "∏"
   , m "coproduct" "∐"
   , m "integral" "∫"
   , m "contour_integral" "∮"
   , m "gradient" "∇"
   , m "@" "∂"
   , m "delta" "Δ"
   , m "dirac" "delta"
   , m "projection" "π"
   , m "pi" "π"
   , m "O¬" "σ"
   , m "selection" "σ"
   , m "transpose" "†"
   , m "entails" "⊧"
   , m "|=" "⊧"
   , m "(x)" "⊗"
   , m "tensor_product" "⊗"
   , m "(*)" "*"
   ]




