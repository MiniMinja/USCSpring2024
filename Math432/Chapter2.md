% Chapter 2 - Induction
% Minyoung Heo
% Math 432

# Weak Induction

Want to prove a statement for all rational numbers $n$ (starting at $n=0$ or $n=1$).

2 steps:

1. **[Base Case]{.underline}**
prove statement for smallest value of $n$ where it's defined ($n=0$ or $n=1$).

2. **[Induction Step]{.underline}**
for each $n$, must show that if the statement is true for $n$, it's true for $n+1$.

This proves the result for all $n$.

___ex___

Suppose you have infinite dominoes.

_Base case_: the first dominoes gets knocked over

_Induction step_: since we know that if $n$th domino gets knocked over, the $n+1$th domino gets knocked over

The entire series of dominoes gets knocked over.

___Proof___

Suppose we completed both steps, but that statement is not true for all values. Let $m+1$ be the smallest value where statement fails. Then since completed base case, the statement works for $m$. But the induction step implies that the statement works for $m+1$, which is a contradiction.

---

_**ex**_

Proof that for all positive integers $m$, 

$$
1+2+3+...+m = \frac{m(m+1)}{2}
$$

**Step 1**

Check for $m=1$. $1 = 1\frac{2}{2}$. It works.

**Step 2**

Assume formula for m. Do it for $m+1$.

$$
\begin{aligned}
1 + 2 + 3 + … + m + (m+1) \\
= \frac{m(m+1)}{2} + m+1 \\
= \frac{(m+1)(m+2)}{2}
\end{aligned}
$$

_**ex**_

Let $a_0 = 0$ and let $a_{n+1} = 3a_n + 1$ for all $n \geq 0$. Derive a formula for $a_m$. 

Let's look at sequence

$$
a_0, a_1, a_2, …
$$

It begins with 1, 4, 13, 40, 121, … 

Look this up in [Sloane's online encyclopedia](https://oeis.org/) of integer sequences. Conjecture: $a_m = \frac{3^m-1}{2}$.

_**Step 1**_

Check conjecture with $m=0$.

$$
a_0 = \frac{3^0-1}{2} = 0
$$

_**Step 2**_

Assume the formula for $m$.

$$
\begin{aligned}
a_{m+1} = 3a_m + 1 \\
= 3 \left[\frac{3^m-1}{2}\right] + 1 \\
= \frac{3^{m+1}-1}{2}
\end{aligned}
$$

---

Two things that can go wrong with induction:

1. _ex_) try to prove all numbers of the form $2m+1$ are even

Induction step works:
Indeed suppose $2m+1$ is even. Then $2(m+1)+1 = 2m+3 = (2m+1)+2$ is even.

But the initial step $m=1$ is false.

2. _ex_) Try to prove all horses are the same color.

The initial step:
Have 1 horse. So initial step works

Induction step:
Suppose any $n$ horses have the same color. Consider horses 1, 2, ..., $n+1$. By assumption, horses 1, 2, ..., n have the same color _and_ 2, 3, ..., $n+1$ have the same color (because it's still $n$ horses). Now horse 2 is in both groups. So horses 1,2, ..., n+1 have all the same color. So it works.

_note:_ if $n=1$, the two groups are horse 1 and horse 2. So horse 2 isn't in both groups. So induction step fails when $n=1$. 

---

# Strong Induction

Two steps:

1. Initial Step

Prove it for smallest value of $n$. Usually, $n=0$ or $n=1$.

2. Induction Step

Assume the result for 1, 2, ..., $n$. Need to prove it for $n+1$. 

_**Theorem**_ Strong induction works

_Proof_

Let $m+1$ be the smallest number that it fails. By the initial step, $m\geq 1$. So result holds for all of 1, 2, ..., $m$. So by induction step (strong), the result holds true for $m+1$. Contradiction.

_ex_

Define a sequence

$$
a_0, a_1, a_2, …
$$

by $a_0 = 0$

$$
a_{n+1} = a_0 + a_1 + … + a_n + (n+1) 
$$

for all $n\geq 0$

Looking at a few terms, you guess that $a_n = 2^n-1$. Weak induction doesn't work since $a_{n+1}$ involves more than just $a_n$. 

[Solution]{.underline}

Initital step works for $n=0$ since $2^0 - 1= 0$. 

_Using weak induction_

Assume $a_n = 2^n-1$. Need to show $a_{n+1} = 2^{n+1}-1$.

But 

$$
a_{n+1} = a_0 + a_1 + ... + a_{n-1} + a_n + (n+1) 
$$

We only know $a_n$, but we don't know all the other terms.

_Using strong induction_

Suppose [           ]{.underline} is true for all of 1,2,..., $n$. Then,

$$
\begin{aligned}
a_{n+1} = a_0 + a_1 + a_2 + … + a_n + (n+1) \\
= (2^0-1) + … + (2^n-1) + (n+1) \\
= 1 + 2 + 4 + … + 2^n \\
= 2^{n+1} - 1
\end{aligned}
$$

Then we're done.

_ex_

_**Theorem**_ Any integer $\geq 2$ is a product of primes. 

_Proof_ Use strong induction. 

_Initial Step_

$n=2$, True since 2 is prime.

_Induction Step_

Assume true for 2,3, ..., $n$.

2 Cases:

1. $n + 1$ is prime. And we're done.

2. $n+1$ is not prime. Then

$$
n+1 = a \times b , \quad 2\leq a,b \leq n 
$$
So we know $a$ and $b$ are both product of primes and we're done.
