% Lecture 3
% Math 467
% Jan 12 2024


\newcommand{\innerprod}[2]{\left<#1, #2\right>}

$$
\begin{aligned}
A \in \R^{n \times n} \\
P(\lambda) = \text{det}(A - \lambda I) \\
\text{roots } \lambda_1, \lambda_2, … \lambda_n \\
\lambda_i \mapsto v_i \in \R^n, Av_i = \lambda_i v_i
\end{aligned}
$$

_Ex_

$$
\begin{aligned}
n=2\\
P(\lambda) = \text{det}\begin{pmatrix}2-\lambda & 1 \\ 1 & 1-\lambda\end{pmatrix}\\
= \lambda^2 - 3\lambda + 1\\
\rightarrow \lambda^2 -3\lambda + \left(\frac{3}{2}\right)^2 \\
\lambda_{1,2} = \frac{3}{2} \pm \sqrt{\frac{5}{4}} \\
\end{aligned}
$$

Find Eigenvectors

$\lambda_1$:

$$
\begin{aligned}
\begin{pmatrix}2&1\\1&1\end{pmatrix}\begin{pmatrix}a\\b\end{pmatrix} = \lambda_1\begin{pmatrix}1\\b\end{pmatrix} \\
a+b = \lambda_1 b
\end{aligned}
$$

choose $b = 1$, then $a = \lambda_1 -1$.

$$
v_1 = \begin{pmatrix}\lambda_1 -1\\1\end{pmatrix} = \begin{pmatrix}\frac{3+\sqrt{5}}{2}-1\\1\end{pmatrix} = \begin{pmatrix}\frac{1+\sqrt{5}}{2}\\1\end{pmatrix}
$$

$\lambda_2$:

$$
\begin{aligned}
\begin{pmatrix}2&1\\1&1\end{pmatrix}\begin{pmatrix}a\\b\end{pmatrix} = \lambda_2\begin{pmatrix}a\\ b\end{pmatrix}\\
\rightarrow 2a + b = \lambda_2 a
\end{aligned}
$$
$v_2 = \begin{pmatrix}\lambda_2 - 1\\1\end{pmatrix} = \begin{pmatrix}\frac{1-\sqrt{5}}{2} \\ 1\end{pmatrix}$

$$
\text{det }B = 0
$$

$\rightarrow$ $B$ has nontrivial nullspace $M(B)$, that is, there exists $v\in \R^n$ such that $Bv= 0$.

_ex_

$$
B = \begin{pmatrix}a&b&0 \\ c&d&0\\ \alpha&\beta&0\end{pmatrix}
$$

$\text{det }B =0$. $\rightarrow$ there exists $M(B)$. $B\begin{pmatrix}x\\y\\z\end{pmatrix} = \begin{pmatrix}*\\*\\0\end{pmatrix}$.

_ex_

$$
A = \begin{pmatrix}1&1\\0&1\end{pmatrix}
$$

$P(\lambda) = \lambda^2 - 2\lambda + 1 = (\lambda-1)^2$

$\lambda_1 =\lambda_2 = 1$

Eigenvector:

$$
\begin{aligned}
\begin{pmatrix}1&1\\0&1\end{pmatrix} \begin{pmatrix}a\\b\end{pmatrix} = \begin{pmatrix}a\\b\end{pmatrix}
\end{aligned}
$$


$$
\begin{cases}
a+b &= a \\
b &= b
\end{cases}
$$

$v_1 = \begin{pmatrix}1\\0\end{pmatrix}$

generalised eigenvetor: $v_2 = \begin{pmatrix}0\\1\end{pmatrix}$

$$
Av_2 = v_1
$$

$$
\begin{aligned}
(A-I)v_1 = 0 \\
(A-I)^2 v_2 = 0
\end{aligned}
$$

_ex_

$n=3$

$$
A = \begin{pmatrix}a&\alpha&\beta\\0&b&\gamma\\0&0&c\end{pmatrix}
$$

characteristic polynomial:

$P(\lambda) = (\lambda-a)(\lambda-b)(\lambda-c)$.

eigenvalues are $a, b, c$. The diagonals. 

_**Theorem**_

Assume $A^T = A$ (symmetric). $A\in \R^{n\times n}$. Then all eigenvalues are real.

_Proof_

Let $\lambda$ be an eigenvalue. This $\lambda$ could be complex. → there exists an eigenvector so that $Av = \lambda v$.
Then,

$$
\lambda \ip{v}{v} = \ip{\lambda v}{v} = \ip{Av}{v} = \ip{v}{ A^Tv} = \ip{v}{Av} = \ip{v}{\lambda v} = \overline{\lambda} \ip{v}{v}
$$

i.e.

$$
\lambda \ip{v}{v} = \overline{\lambda}\ip{v}{v} \rightarrow \lambda = \overline{\lambda}
$$
which means $\lambda$ is real. 

_note_:

$$
\ip{Av}{v} = \sum_j (Av)_j v_j = \sum_j \left(\sum_iA_{ji} v_i\right)v_j = \sum_{i,j}v_jA_{ji}v_i = \sum_i v_i \sum_j A_{ji} v_i
$$
note the A's have swapped (the summation is swapped).

_**Theorem**_

Assume $A = A^T$. Then there exists an orthogonal basis of eigenvectors

_Proof_:

We know the case when $\lambda_j$, $j = 1,...,n$ are distinct and all $\lambda_j$ are real. Let $v_j$ eigenvector for $\lambda_j$. let $i \neq k$. 

$$
\begin{aligned}
\lambda_j \ip{v_j}{v_k} = \ip{\lambda_j v_j}{v_k} \\
= \ip{Av_i}{v_k} = \ip{v_i}{A^Tv_k} \\
= \ip{v_i}{Av_k} = \ip{v_j}{\lambda_k v_k} \\
= \lambda_k \ip{v_j}{v_k}
\end{aligned}
$$

$\rightarrow \lambda_j \ip{v_j}{v_k} = \lambda_k\ip{vj}{v_k}$


But since $\lambda_j \neq \lambda_k$, $\ip{v_j}{v_k} =0$.

_**Observation**_:

You can change coordinates to $v_1, v_2, ..., v_n$. We can assume $||v_i|| = 1$ so that length doesn't matter. You can put 

$$
T = (v_1, v_2, ..., v_n )
$$

$$
T^T = \begin{pmatrix}v_1\\v_2\\...\\v_n\end{pmatrix}
$$

So what happens when you multiply $T^T T$?

$$
\begin{aligned}
T^T T = \begin{pmatrix}v_1\\v_2\\...\\v_n\end{pmatrix}(v_1, v_2, ..., v_n ) \\
= ? \text{(keep reading)}
\end{aligned}
$$

Each element is ($\ip{v_j}{v_k}$ which is $\delta_{jk}$ - kroenickerdelta). 

$$
\delta_{jk} = \begin{cases}
1 & \text{if } i = k \\
0 & \text{if } i \neq k
\end{cases}
$$

$T^T T = I$. In particular, $T^T = T^{-1}$.

# Quadratic Forms

Let $Q$ be a $n\times n$ symmetric matrix. For $x\in \R^n$, a function $f:\R^n \mapsto \R$ 

$$
f(x) = x^T Qx = \sum_{i,j = 1}^n x_iQ_{ij}x_j
$$

is a quadratic form.

$f$ is _positive-definite_ if $f(x) > 0$ for all $x \neq 0$
$f$ is _positive semi-definite_ if $f(x) \geq 0$ for all $x$

# Homework

pg. 40
3.10
3.15
3.16
