% Chapter 4
% Math 432

# Binomial Theorem + Related Identities

## The Theorem

For all non-negative integers $n$, 

$$
(x+y)^n = \sum_{k=0}^n \begin{pmatrix}n\\k\end{pmatrix}x^k y^{n-k}
$$

_**Proof 1(Combinatorial)**_

To get a term $x^ky^{n-k}$ when you expand 

$$
(x+y)(x+y)...(x+y)
$$

you choose $k$ terms that contribute $x$ and the other $n-k$ terms contribute $y$. We can do this in $\begin{pmatrix}n\\k\end{pmatrix}$ ways so the theorem follows.

_**Proof 2**_ (Induction)

When $n=1$, $x+y = \begin{pmatrix}1\\0\end{pmatrix}x^0y^1 + \begin{pmatrix}1\\1\end{pmatrix}x^1 y^0$ so the case for $n=1$ checks.

Let's assume it works for $n-1$, we need to prove it for $n$. 

$$
\begin{aligned}
(x+y)^n = (x+y)(x+y)^{n-1}\\
=(x+y) \sum_{k=0}^{n-1} \begin{pmatrix}n-1\\k\end{pmatrix}x^k y^{n-1-k} \\
= \sum_{k=0}^{n-1} \begin{pmatrix}n-1\\k\end{pmatrix}x^{k+1}y^{n-1-k} + \sum_{k=0}^{n-1} \begin{pmatrix}n-1\\k\end{pmatrix}x^{k}y^{n-k}
\end{aligned}
$$

Letting $i=k+1$ in first sum and $i=k$ in the second sum, we get

$$
\begin{aligned}
\sum_{i=1}^n \begin{pmatrix} n-1\\i-1\end{pmatrix}x^iy^{n-i} + \sum_{i=0}^{n-1}\begin{pmatrix}n-1\\i\end{pmatrix}x^iy^{n-i}\\
=x^n+\sum_{i=1}^{n-1} \left[\begin{pmatrix}n-1\\i-1\end{pmatrix}+ \begin{pmatrix}n-1\\i\end{pmatrix}\right] x^iy^{n-i} + y^n
\end{aligned}
$$

Recall

$$
\begin{pmatrix}n-1\\i-1\end{pmatrix} + \begin{pmatrix}n-1\\i\end{pmatrix} = \begin{pmatrix}n\\i\end{pmatrix}
$$

So we get

$$
x^n + \sum_{i=1}^{n-1} \begin{pmatrix}n\\i\end{pmatrix} x^i + y^n = \sum_{i=0}^n\begin{pmatrix}n\\i\end{pmatrix}x^iy^{n-i}
$$

## Corollaries

_**Corollary**_

$$
\sum_{k=0}^n (-1)^k \begin{pmatrix}n\\k\end{pmatrix} = 0
$$

_Proof_

Set $x=-1, y=1$ in the binomial theorem. $0^n = \sum_{k=0}^n(-1)^k \begin{pmatrix}n\\k\end{pmatrix}$. (We'lll use this later when proving principle of inclusion-exclusion).

_**Another Corollary**_

$$
\sum_{k=0}^n\begin{pmatrix}n\\k\end{pmatrix} = 2^n
$$

_Proof_

Set $x=1, y=1$ in the binomial theorem. 

_**Trickier Corollary**_

For all non-negative intgers $n \geq 1$, 

$$
\sum_{k=1}^n k \begin{pmatrix}n\\k\end{pmatrix} = n2^{n-1}
$$

_Proof 1 (Combinatorial)_

Claim that both sides count the number of ways to form a committee from some non-empty subset of $n$ people and then choose a president for the committee. 

The left hand side have $\begin{pmatrix}n\\k\end{pmatrix}$ choices for a size $k$ committee and then $k$ choices for the president of the committee. For the right hand side, we can pick the president in $n$ ways. Then you choose a subset of the other $n-1$ people to serve as a committee for the president, which you can do $2^{n-1}$ ways.  And the theorem follows.

_Proof 2_

By the binomial theorem, $(x+1)^n = \sum_{k=0}^n \begin{pmatrix}n\\k\end{pmatrix} x^k$. Differentiate both sides with respect to $x$.

$$
n(x+1)^{n-1} = \sum_{k=0}^n \begin{pmatrix}n\\k\end{pmatrix} k x^{k-1}
$$

and then set $x=1$.

$$
n2^{n-1} = \sum_{k=0}^nk\begin{pmatrix}n\\k\end{pmatrix}
$$

**Remarks:**

The theorem is useful for computing the mean of a binomial($n$, $\frac{1}{2}$) random variable. Indeed, the mean is

$$
\sum_{k=1}^n \frac{k\begin{pmatrix}n\\k\end{pmatrix}}{2} = \frac{n2^{n-1}}{2^n} = \frac{n}{2}
$$

## Next Theorem

For positive integers $n, m, k$, 

$$
\begin{pmatrix}n+m\\k\end{pmatrix} = \sum_{i=0}^k \begin{pmatrix}n\\i\end{pmatrix}\begin{pmatrix}m\\k-i\end{pmatrix}
$$

_Exercise: Prove this combinatorially_

_**Algebraic Proof**_

