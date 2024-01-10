% Chapter 2 - Induction
% Minyoung Heo
% Math 432

# Weak Induction

Want to prove a statement for all rational numbers $n$ (starting at $n=0$ or $n=1$).

2 steps:

1. *[Base Case]{.underline}*
prove statement for smallest value of $n$ where it's defined ($n=0$ or $n=1$).

2. *[Induction Step]{.underline}*
for each $n$, must show that if the statement is true for $n$, it's true for $n+1$.

This proves the result for all $n$.

___ex___

Suppose you have infinite dominoes.

_Base case_: the first dominoes gets knocked over

_Induction step_: since we know that if $n$th domino gets knocked over, the $n+1$th domino gets knocked over

The entire series of dominoes gets knocked over.

___Proof___

Suppose we completed both steps, but that statement is not true for all values. Let $m+1$ be the smallest value where statement fails. Then since completed base case, the statement works for $m$. But the induction step implies that the statement works for $m+1$, which is a contradiction.