# Chapter 1
## Pigeon Hole Principle

___Some Resource___:
Sami Assaf (432 videos)

#### _Theorem 1_ 
Let $n$, $k$ be positive integers with $n>k$, Put $n$ balls into $k$ boxes in some what. Then must have at least 1 box with 2 balls
_Proof_:
Proceed by contradiction:
Assume that each of the $k$ boxes has at least 1 ball. Then the number of balls is at most $k$ But we assumed there there are $n$ balls and $n>k$. Contradiction

_Example_ (doesn't use pigeon-hole principle)
Consider the numbers $1,2,...,2n$. Take any $n+1$ of them. Then among them there must be two which are relatively prime.
_Proof (sketch)_:
If have $n+1$ numbers from $1,2,3,...,2n$, then must have two consecutive numbers these are relatively prime.

_Example_ (does use pigeon-hole principle)
Let $A$ be a set of $n+1$ numbers chosen from $1,2,3,...,2n$. Then there are always two numbers in $A$ such that one divides the other.
_Soln_
Write each $a\in A$ as $a=2^km$ where $m$ is odd and at most $2n-1$. Call $m$ the "odd part of $a$". Since $A$ has $n+1$ elements, and there are only $m$ possible odd parts, the pigeon-hole principle implies that there are 2 numbers in $A$ with the same odd part, so one of these numbers divides the other.