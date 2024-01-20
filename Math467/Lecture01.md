# Lecture 1

vector space					$\mathbf{R}^n$

vectors							$v\in \mathbf{R}^n$

transposed vectors 			$v^T=|v_1, v_2, ..., v_n|$

$n\times n$ matrix					$A = \begin{bmatrix} a_{11} & a_{22} & … & a_{1n} \\ … & … & … & … \\ a_{n1} & a_{n2} & … & a_{nn} \end{bmatrix} = (a_{ij})_{1\leq i,j \leq n}$

$n \times m$ matrix					$A = \begin{bmatrix} a_{11} & a_{22} & … & a_{1m} \\ … & … & … & … \\ a_{n1} & a_{n2} & … & a_{nm} \end{bmatrix} = (a_{ij})_{1\leq i,j \leq n}$

$n\times n$ matrix defines a linear map on $\mathbf{R}^n$

$v = \begin{pmatrix} v_1 \\ v_2 \\ … \\ v_n\end{pmatrix} \mapsto Av \in \mathbf{R}^n$
where $Av = \begin{pmatrix} (Av)_1 \\ (Av)_2 \\ … \\ (Av)_n \end{pmatrix}$, $(Av)_i = \sum^n_{1} A_{ij}v_i$


_Example_
$n = 2$

$A = \begin{bmatrix} 3 & 4 \\ 1 & 3 \end{bmatrix}$

$Av = \begin{bmatrix} 3 & 4 \\ 1 & 3\end{bmatrix} \begin{pmatrix} v_1 \\ v_2 \end{pmatrix} = \begin{pmatrix} 3v_1 + 4v_2 \\ v_1 + 2v_2 \end{pmatrix}$



Maps are linear:

1. if $v,w \in R^n$, then $A(v+w) = Av + Aw$

2. if $\alpha \in \mathbf{R}^n$, then $A(\alpha v) = \alpha (Av)$


#### Definition (linear product)

$(\cdot, \cdot): \mathbf{R}^n \times \mathbf{R}^n \mapsto \mathbf{R}$

that is if $x, y \in \mathbf{R}^n$, then

$(x, y) \in \mathbf{R}$

if

| Linear Product Properties | Property    |
|---|---|
| $\left<\mathbf{x}, \mathbf{x}\right> \geq 0$, $\left<\mathbf{x}, \mathbf{x}\right> = 0$ if and only if $\mathbf{x}=0$ | Positivity  |
| $\left<\mathbf{x}, \mathbf{y}\right> = \left<\mathbf{y}, \mathbf{x}\right>$  | Symmetry    |
| $\left<\mathbf{x}+\mathbf{y}, \mathbf{z}\right> = \left<\mathbf{x}, \mathbf{z}\right> + \left<\mathbf{y}, \mathbf{z}\right>$ | Additivity  |
| $\left<r\mathbf{x}, \mathbf{y}\right>= r\left<\mathbf{x}, \mathbf{y}\right>$ for every $r \in \mathbf{R}$  | Homogeneity |



#### Remark
1. Have $(\cdot, \cdot) \in \mathbf{R}^n$ is the dot product:

$$x^T = (x_1, x_2, …, x_n), y^T=(y_1, y_2, … y_n)$$
$$(x, y) = \sum^n_{i} x_iy_i$$


2. _Def_: $x\in \mathbf{R}^n$, then $||x|| = \sqrt{(x, x)}$ in Euclidean norm of $x$.
also, $x, y \in \mathbf{R}n$, if $(x, y) = 0$ then $x, y$ are orthogonal

3. $(z, x+y) = (x+y, z) = (x, z) + (y,z) = (z, x) + (z, y)$

4. $(x, \alpha y) = (\alpha y, x) = \alpha (y, x) = \alpha(x, y)$

5. $x, y \in \mathbf{R}^n$, $A = (a_{ij})_{1\leq ij\leq n}$
then, $$(Ax, y) = \sum^n_i (Ax)_i y_i$$

$$= \sum^n_i \left(\sum^i_j a_{ij}x_j\right)y_i$$

$$=\sum^n_i x_i a_{ij} y_i$$

$$= \sum^n_i x_i\left(a_{ij} y_i\right) = (x, A^Ty)$$

$$\rightarrow (Ax, y) = (x, A^Ty)$$

$$\rightarrow (x, Ay) = (A^Tx, y)$$

_Example_
take vectorspace of functions $f(t)$ on $[0, 2\pi]$

let $f$,$g$ be the transformation defined inner product

$$(f, g) = \int_0^{2\pi} f(t)g(t) dt$$
then for instance, $n, m \in \mathbf{N}$
$$f(t) = \sin(nt), g(t) = \sin(mt)$$
then if $n \neq m$

$$
\begin{aligned}
(f,g) = \int_0^{2\pi} \sin(nt) \sin(mt) dt\\
\cos(\alpha + \beta) = \cos(\alpha) \cos(\beta) - \sin(\alpha) \sin(\beta) \\
\cos(\alpha - \beta) = \cos(\alpha) \cos(\beta) + \sin(\alpha) \sin(\beta) \\
\cos(\alpha-\beta)-\cos(\alpha+\beta) = 2\sin(\alpha)\sin(\beta) \\
\alpha = nt, \beta = mt, n\neq m \\
\rightarrow \sin(nt) \sin(mt) = \frac{1}{2}(\cos((n-m)t)-\cos((n+m)t))
\end{aligned}
$$


so
$$(f,g) = \int_0^{2\pi} \sin(nt) \sin(mt) dt$$

$$= \frac{1}{2}\int_0^{2\pi} \cos((n-m)t) - \cos((n+m)t)dt = 0$$
that is $f, g$ are [orthogonal]{.underline}

### Theorem (Cauchy-Schwarz Inequality)
$x, y \in \mathbf{R}^n$, then

$$|(x, y)| \leq ||x||\cdot ||y||$$
_Proof_

let $v, w \in \mathbf{R}^n$ so that $||v|| = ||w|| = 1$,
then 

$$
\begin{aligned}
0 \leq ||v+w||^2 = (v+w, v+w) \\
\rightarrow 0 \leq (v, v) + (v, w) + (w, v) + (w, w) \\
= ||v||^2 + 2(v, w) + ||w||^2 \\
= 2(1 + (v, w)) \\
\rightarrow 0 \leq 1 + (v, w) \\
\rightarrow (v, w) \leq 1 = ||v||\cdot || w|| \\
\end{aligned}
$$

also $0 \leq ||v-w||^2$ given
$-(v, -w) \leq 1$

in general, $x, y \in \mathbf{R}^n$ let

$$
\begin{aligned}
v = \frac{x}{||x||} \rightarrow ||v|| =1 \\
w = \frac{y}{||y||} \rightarrow = 1 \\
\rightarrow \left(\frac{x}{||x||},\frac{y}{||y||}\right) \leq 1 \\
\rightarrow \frac{1}{||x|| \cdot ||y||} |(x, y)| \leq 1 \\
\rightarrow |(x, y)| \leq ||x|| \cdot ||y|| \\
\end{aligned}
$$

### Triangle Inequality

\newcommand{\boldx}{\mathbf{x}}
\newcommand{\boldy}{\mathbf{y}}

$$
||\bx + \by|| \leq ||\bx|| + ||\boldy||
$$

### Homework
p22f
2.8, 2.9, 2.10