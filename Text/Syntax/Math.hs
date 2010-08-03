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

module Text.Syntax.Math where

import Text.Syntax.Simple

import Data.Dynamic

import Text.XHtml.Strict

import Data.Either

-- | Highlight mathematical symbols
math :: Dynamic
math = highlight "snmmath:Text.Syntax.Math.math" syms

m :: String -> String -> (String, String, String)
m sym out = (sym, "math_symbol", out)

html_sym :: Char -> String
html_sym c =
   if int_c > 255 
      then "&#" ++ show int_c ++ ";" 
      else
         [c]
   where
   int_c = fromEnum c

-- | Output a string to copy-paste into the snm documentation for this plugin
doc_syms :: String
doc_syms = unlines (map doc_sym inputs)
   where
   doc_sym inp = "       \\n" ++ inp ++ spaces inp ++ "{language " ++ inp ++ " math}"
   max = maximum $ map length inputs
   spaces i = replicate (5 + max - length i) ' '
   inputs = map (\(i, _, _) -> i) syms

syms :: [(String, String, String)]
syms = map (\(inp, cls, out) -> (inp, cls, concatMap html_sym out)) $ 
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
   , m "derives" "⊢"
   , m "=>" "⇒"
   , m "->" "→"
   , m "|->" "↦"
   , m "therefore" "∴"
   , m "because" "∵"
   , m "{}" "∅"
   , m "empty" "∅"
   , m "root" "√"
   , m "!=" "≠"
   , m ">=" "≥"
   , m "<=" "≤"
   , m "orthogonal" "⊥"
   , m "or" "∨"
   , m "xor" "⊕"
   , m "(+)" "⊕"
   , m "and" "∧"
   , m "iff" "⇔"
   , m "<=>" "⇔"
   , m "top" "⊤"
   , m "bottom" "⊥"
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
   , m "semidirect_product" "⋉"
   , m "semijoin" "⋊"
   , m "natural_join" "⋈"
   , m "|><|" "⋈"
   , m "|><" "⋉"
   , m "><|" "⋊"
   , m "<|" "◅"
   , m "|>" "▻"
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
   , m "dirac" "δ"
   , m "projection" "π"
   , m "pi" "π"
   , m "O~" "σ"
   , m "selection" "σ"
   , m "transpose" "†"
   , m "entails" "⊧"
   , m "|=" "⊧"
   , m "(x)" "⊗"
   , m "tensor_product" "⊗"
   , m "(*)" "*"
   ]




