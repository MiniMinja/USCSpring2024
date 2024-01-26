# Mathematical Induction

Prove $1 + 2 + … + n = \frac{n(n+1)}{2}$.

|$n=1$| $1 = \frac{n(n+1)}{2}$|
|---|---| 
|$n=2$| $1 + 2= \frac{2(2+1)}{2}$|
|$n=3$| $1+2+3 = \frac{3(3+1)}{2}$|
|$n=4$| $1+2+3+4 = \frac{4(4+1)}{2}$|

## Principal of Mathematical Induction

Take a statement $P(n)$ (can evaluate as true or false)

_Base Case_

Prove $P(1)$

_Induction_

Assume $P(n)$ is true. Prove $P(n+1)$ is true.

Then you can conclude $P(n$) is true for all $n \geq 1$. 

## Solution

Prove $1 + 2 + … + n = \frac{n(n+1)}{2}$.

_Solution (by Induction)_

[BASE CASE:]{.underline} $n=1$

LHS: 1

RHS: $\frac{1(2)}{2} = 1$

Assume for some $n \geq 1$, $1 + 2 + ... + n = \frac{n(n+1)}{2}$. We need  to show (and you should write this down):

$$
1 + 2 + … + n + (n+1) = \frac{(n+1)(n+2)}{2}
$$

Let's start with the LHS
We see the inductive hypothesis in the statement I'm evalulating. 

$$
[1 + 2 + … + n] + (n+1) = \frac{n(n+1)}{2} + (n+1) = \frac{n(n+1) + 2(n+1)}{2} = \frac{(n+1)(n+2)}{2}
$$

And we're done. 

## Polya's Conjecture

**Even** type means an even # of prime factors. **Odd** type means odd # of prime factors. 

|E|1|
|---|---|
|O|2|
|O|3|
|E|4=2 x 2|
|O|5|
|E|6=3 x 2|
|O|7|
|O|8=2 x 2 x 2|
|E|9 = 3 x 3|

$E(n) = k \leq n$ of even type

$O(n) = k < n$ of odd type

For $n \geq 2$, $O(n) \geq E(n)$

(1919) Polya $n \leq 1500$

$E(6) = 3\leq O(6) = 3$
$E(7) = 3$ < $O(7) = 4$
$E(8) = 3 < O(8) = 5$

Computer checked $E(n) \leq O(n)$ for all $n\leq1,000,000$

Lehman showed $E(n) = O(n)+1$ for $n = 906,180,359$.

_So you want to show your proof. Even if you brute force, it isn't enough._