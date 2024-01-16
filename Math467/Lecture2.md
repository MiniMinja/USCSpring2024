% Notes
% Minyoung Heo
% Jan 10 2024

# Inner Products

vectorspace $\mathbb{R}^n$

inner product:

$$
\begin{aligned}
\mathbb{R}^n \times \mathbb{R}^n \mapsto \mathbb{R} \\
\mathbf{v}, \mathbf{w} \int \mathbb{R}^n \\
\text{then, } \left<\mathbf{v}, \mathbf{w}\right> = \sum_{i=1}^n v_i w_i
\end{aligned}
$$
Cauchy-Schwarz:

$|\ip{\bv}{\bw} \leq ||\bv|| \cdot ||\bw||$

where $||\bv|| = \sqrt{\ip{\bv}{\bw}}$

___Theorem (triangle inequality)___

$\bv, \bw \in \R^n$, then $||\bv + \bw|| \leq ||\bv|| + ||\bw||$

___Proof___

$$
\begin{aligned}
||\bv + \bw||^2 = \ip{\bv+\bw}{\bv + \bw} \\
= \ip{\bv}{\bw} + \ip{\bv}{\bw} + \ip{\bw}{\bv} + \ip{\bw}{\bw} \\
= ||\bv||^2 + 2 \ip{\bv}{\bw} + ||\bw||^2 \\
\rightarrow ||\bv + \bw|| ^2 \leq ||\bv||^2 + 2 ||\bv|| \cdot ||\bw|| + ||\bw||^2 \\
= (||\bv|| + ||\bw||)^2
\end{aligned}
$$

___Example of other norms___

$||\cdot||$ is a norm if 

_Example_ $x \in \R^n$,

$$
\begin{aligned}
||x|| = \max_{1\leq i\leq n} |x_i| \\
\end{aligned}
$$

in $n=2$. $x = \begin{pmatrix}x_1 \\ x_2\end{pmatrix}$, $||x|| = \max (|x_1|, |x_2|)$

Ball of radius $r$

$$
B_r(x) = \{y \in \R^2: ||y-x|| < r\}
$$


It's a square:

$$
\leq \{y = \begin{pmatrix}y_1 \\ y_2\end{pmatrix}: |y_1|, |y_2| <r\}
$$

_Example_
$x \in \R^n$

$$
||x|| = \sum_{i=1}^n |x_i|
$$

in $n=2$, $x=\begin{pmatrix}x_1 \\ x_2\end{pmatrix} \rightarrow ||x|| = |x_1|+|x_2|$.

Ball of radius r again. It's a box but looks diagonal. It's called a "_taxicab norm_".

_Example_ $x \in \R^n$

$$
||x|| = \left(\sum_{i=1}^n |x_i|^p\right)^{\frac{1}{n}}
$$

(_exercise: verify with triangle inequality_)

With the same ball of radius $r$ again, it's like the first norm but the corners are curved.

## In the complex:

Innerproduct: $x, y \in \C^n$,

$$
\begin{aligned}
x = \begin{pmatrix}x_1 \\ x_2 \\ … \\ x_n\end{pmatrix}, y=\begin{pmatrix}y_1 \\ y_2 \\ … \\ y_n \end{pmatrix} \\
x_i, y_i \in \C
\end{aligned}
$$

for instance $y_j = u_j + iv_j$, $i^2=-1$


$u_j= \text{Re }y_i$ the real part

$v_j = \text{Im }y_i$ the imaginary part

then $y_j \overline{y_j} = (u_j + iv_j) (u_j-iv_j) = (u_j)^2 - (iv_j)^2 = u_j^2 + v_j^2$

therefore, $y_j\overline{y_j} = |y_j|^2$

then,

$$
\begin{aligned}
\ip{x}{y} = \sum_{j=1}^n x_j \overline{y_j} \\
y_j = \overline{y_j}
\end{aligned}
$$

only if $y_j \in \R$.

$u_j+iv_j = u_j-iv_j \rightarrow v_j = 0$

_note_:

$$
\begin{aligned}
\ip{x}{y} = \sum_{j=1}^n x_j \overline{y_j} \\
\ip{y}{x} = \sum_{j=1}^n y_j \overline{x_j} \\
\overline{\ip{y}{x}} = \overline{\sum_{j=1}^n y_j \overline{x_j}} \\
= \sum_{j=1}^n \overline{y_j \overline{x_j}} \\
= \sum{j=1}^n \overline{y_j}x_j \\
= \ip{x}{y}
\end{aligned}
$$

# Eigenvalues

$A$ is a $n \times n$ real matrix

$A \in \R^{n \times n}$, $A = (a_{ij})_{1\leq i, j \leq n}$, $a_{ij} \in \R$

Characteristic Polynomial

$P(\lambda) = \text{det}(A-\lambda)$

degree $= n \rightarrow P(\lambda)=0$ has $n$ roots: $\lambda_1, \lambda_2, … \lambda_n$

$\lambda_i$ are eigenvalues of $A$.

if $\lambda_j$ is eigenvalue of A
$\rightarrow \text{det}(A-\lambda_j) = 0$
(i.e. $A - \lambda_j$ has rank $\leq n-1$)

$\rightarrow$ it has nontrivial null space

if $\lambda_j \in \C \rightarrow$ there exists $v \in \C^n$ such that 

$$
Av = \lambda_i v
$$

if $\lambda_j \in \R \rightarrow$ there exists $v \in \R^n$ such that 

$$
Av = \lambda_j v
$$

then v is called an eigenvector of $A$ to eigenvalue $\lambda_j$.

___Theorem___
Assume $A\in \R^{n\times n}$ has n distinct real eigenvalues $\lambda_1, … , \lambda_n$, then it has $n$ linearly independent eigenvectors.

_Proof_
$\lambda_j$ eigenvalue $\rightarrow$ there exists $v_j \in \R^n$ so that $Av_j = \lambda_j v_j$, $j=1,...,n$.

We have to know $v_1, … , v_n$ are linearly independent (if 

$$
\sum_{i=1}^n c_j v_j = 0
$$

for coefficients $c_1, c_2, …, c_n$ then one must have $c_j$ = 0 for all $i$.)

**Use the trick:** Put $z_i = \Pi_{k\neq j} (\lambda_k I - A)$ so

$z_j = (\lambda_n I - A)...(\lambda_{j+1}I - A)(\lambda_{j-1} I - A)...(\lambda_2 I - A)(\lambda_1 I - A)$
(notice no $j$ term)

then,

$$
\begin{aligned}
(\lambda_k I - A)v_j = \lambda_k v_j - \lambda_j v_j = (\lambda_k - \lambda_j)v_j \\
\rightarrow z_j v_j = \Pi_{k \neq j}(\lambda_k - \lambda_j)v_j \neq 0
\end{aligned}
$$

Also

$$
\begin{aligned}
z_jv_k = 0
\end{aligned}
$$

Now apply $z_i$ to $\sum_{k=1}^n c_k v_k$.

$$
\begin{aligned}
z_i \left(\sum_{k=1}^n c_kv_k\right) = \sum_{k=1}^n z_i(c_kv_k) \\
= \sum_{k=1}^n c_k z_j v_k\\
= c_j z_j v_j
\end{aligned}
$$

But $z_j v_j \neq 0$ so if these were to be 0, $c_j = 0$. This is true for all $j=1,2,...,n$. So $c_j=0$ for all $j$.

$\rightarrow v_1, v_2,...v_n$ are linearly independent.

# Homework

pg 40: 3.8, 3.9
