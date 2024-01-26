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

right hand side

$$
\begin{aligned}
= \text{coefficient of }x^k \text{ in } [\sum_{i\geq 0} \begin{pmatrix}n\\i\end{pmatrix}][\sum_{j\geq 0}\begin{pmatrix}m\\j\end{pmatrix}] \\
= \text{coeff of }x^k \text{ in } (x+1)^n(x+1)^m \\
= \text{coeff of }x^k \text{ in } (x+1)^{n+m} \\
= \begin{pmatrix}n+m\\k\end{pmatrix}
\end{aligned}
$$

## Multinomial Theorem

when $\nlist{a}$ are non-negative integers which sums to n, degine the "multinomial coefficient"

$$
\begin{pmatrix}n\\ \nlist{a} \end{pmatrix} -= \frac{n!}{a_1!a_2!...a_n!}
$$

when $k=2$, this is a binomial coefficient. 

## Theorem

$\nlist{a}$ is nonnegative and sum to $n$

$$
(x_1 + … + x_k)^n = \sum_{\nlist{a}} \begin{pmatrix}n\\ \nlist{a}\end{pmatrix} x_1^{a_1} x_2^{a_2}...x_k^{a_k}
$$

When $k=2$, this is the binomial theorem

_Proof_

Coefficient of $x_1^{a_1}x_2^{a_2}...x_k^{a_k}$ in $(x_1+...+x_n)^n$

= the number of length $n$ strings with $a_1$ 1s, $a_2$ 2s,...$a_k$ ks. 

$$
= \begin{pmatrix}n\\ \nlist{a}\end{pmatrix}
$$
_Remark_

Let's give another proof that the number of length $n$ strings with $a_1$ 1s, $a_2$ 2s, ..., $a_k$ $k$s $= \begin{pmatrix}n\\ \nlist{a}\end{pmatrix}$.

Count these strings. Choose the positions for the 1s in $\begin{pmatrix}n\\a_1\end{pmatrix}$ ways. Then choose position for 2s in $\begin{pmatrix}n-a_1\\a_2\end{pmatrix}$ ways. Etc. So we get

$$
\begin{aligned}
\begin{pmatrix}n\\a_1\end{pmatrix}\begin{pmatrix}n-a_1\\a_2\end{pmatrix}\begin{pmatrix}n-a_1-a_2\\a_3\end{pmatrix} ...\\
= \frac{n!}{a_1!(n-a_1)!}\frac{(n-a_1)!}{a_2!(n-a_1-a_2)!}\frac{(n_1-a_1-a_2)!}{a_3!(n-a_1-a_2-a_3)!} ...\\
= \frac{n!}{a_1!a_2!a_3!...} = \begin{pmatrix}n\\ \nlist{a}\end{pmatrix}
\end{aligned}
$$

What can we say about $(1+x)^m$ when $m$ is not a positive integer?

Let $m$ be any real number, and $k$ a non-negative integer. Define $\begin{pmatrix}m\\ 0\end{pmatrix}= 1$ and $\begin{pmatrix}m\\k\end{pmatrix} = \frac{m(m-1)...(m-k+1)}{k!}$ for $k\geq 1$.

_Theorem_

$$
(1+x)^m = \sum_{n \geq 0} \begin{pmatrix}m\\n\end{pmatrix} x^n
$$

_Note: if $m$ is an integer, this is a finite sum since $\begin{pmatrix}m\\n\end{pmatrix} = 0$ if $n>m$.

_Proof_

if $f(x) = \sum_{n\geq 0} c_n x^n$, $c_n = \frac{1}{n!}f^{(n)}(0)$ (using calculus). So apply this to $f(x) = (1+x)^m$ $n$th derivative of $f(x) = m(m-1)...(m-n+1)(1+x)^{m-n}$. Evaluating this at $x=0$ gives 

$$
m(m-1)...(m-n+1)
$$

so coeffiveint of $x^n$ in $(1+x)^m$ is equal to 

$$
\frac{m(m-1)...(m-n+1)}{n!} = \begin{pmatrix}m\\n\end{pmatrix}
$$



### Example

Find power series of $\sqrt{1-4x}$. 

_Note_

$$
\begin{pmatrix}\frac{1}{2}\\n\end{pmatrix} = \frac{\frac{1}{2}-\frac{1}{2}-\frac{3}{2}...-\frac{(2n+3)}{2}}{n!}
= \frac{(-1)^{n-1}(2n-3)!!}{2^n n!}
$$

By the theorem

$$
\begin{aligned}
\sqrt{1-4x} = (1-4x)^{\frac{1}{2}} \\
= \sum_{n>0}\begin{pmatrix}\frac{1}{2}\\-4x^n\end{pmatrix} \\
= 1-2x - \sum_{n\geq 2} \frac{(2)^{n-1}(2n-3)!!}{ n!}x^n \\
= 1-2x-\sum_{n\geq 2} \frac{2^n(2n-3)!!(n-1)!}{n!(n-1)!} x^n
\end{aligned}
$$

_(Double factorial is **not** factorial done twice. $(2n-3)!!$ is the product of all odd integers from 1 to $2n-3$)_

Note $2^{n-1}(n-1)!$ is equal to product of all even integers from 2 to $2n-2$. so we get 

$$
1-2x-\sum_{n\geq 2} \frac{2(2n-2)!}{n!(n-1)!} = 1-2x-\sum_{n\geq 2}\frac{2}{n} \begin{pmatrix}2n-2\\n-1\end{pmatrix}
$$

