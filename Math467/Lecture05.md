% Lecture 5
% Math 467
% Jan 19 2024

Matrix norm

$A \in \R^{m \times n}$, norm $||\cdot||$

1. $||A|| \geq 0$ ($||A|| = 0$ only if $A = 0$)

2. $||\alpha \cdot A|| =  |\alpha| ||A||$ for any $\alpha \in \R$.

3. $||A + B|| \leq ||A|| + ||B||$  → triangle inequality

4. $||AB|| \leq ||A|| \cdot ||B||$

Induced Metric:

$A \in \R^{m \times n}$, $A : \R^n \mapsto \R^m$ (if $x \in \R^n$ then $Ax \in \R^m$)

$$
||A|| = \max_{||x||=1} ||Ax|| = \max_{x\neq 0} \frac{||Ax||}{||x||}
$$

This is the induced norm. $||Ax|| \leq ||A||\cdot ||x||$. 

# Theorem

$||\cdot||$ is a matrix norm _and_ also satisfies (4) (from the conditions)

_Proof_

_(These are pretty trivial)_

1. $||A|| \geq 0$ as $||Ax|| \geq 0$ and $||A|| = 0$  only if $A = 0$

2. $||\alpha A|| \geq |\alpha| ||A||$ because $x \in \R^n$, $||(\alpha A)x|| = ||\alpha A x|| = |\alpha| ||Ax||$.

_(Look at these)_

3. let $x \in \R^n$, then $||(A + B)x|| = ||(Ax) + (Bx)||$

$$
\begin{aligned}
\leq ||Ax|| + ||Bx|| \\
\leq ||A||\cdot ||x|| + ||B|| \cdot ||x|| \\
= (||A|| + ||B||)||x|| \\
\rightarrow ||A + B|| = \max_{||x||=1}||(A + B)x|| \\
\leq ||A|| + ||B||
\end{aligned}
$$

4. $A \in \R^{m \times n}$, $B \in \R^{n \times p}$ → $AB \in \R^{m \times p}$. $x \in \R^p$ → $Bx = \R^n$.

$$
\begin{aligned}
||AB|| = \max_{||x||=1} ||ABx|| \\ 
\leq \max_{||x||=1} ||A|| \cdot ||Bx||  \leq \max_{||x||=1} ||A||\cdot ||B||\cdot ||x|| \\
= ||A|| \cdot ||B||
\end{aligned}
$$

Recall:

$$
||B||= \max_{x\neq 0} \frac{||Bx||}{||x||} \rightarrow ||B|| \cdot ||x|| \geq ||Bx||
$$


multiplying the $||x||$ over.

# Eigenvalues and Norms

Let $A \in \R^{m\times n}$. Let $\nlist{\lambda}$ be eigenvalues of $A^TA$. If $||\cdot||$ is the induced metric,

$$
\sqrt{\lambda_n} \leq ||A|| \leq \sqrt{\lambda_1}
$$

_Proof_)

Notice $A^TA \in \R^{n \times n}$ and is also symmetrical (($A^TA)^T = A^T(A^T)^T = A^TA$). The quadratic form $f(x) = x^TA^TAx$ for $x\in \R^n$. This quadrative form is semi-definite ($f(x) = x^TA^TAx = \ip{x}{A^TAx} = \ip{Ax}{Ax} = ||Ax||^2 \geq 0$) → $A^TA$ has eigenvalues $\lambda_i \in \R$ and $\lambda_i \geq 0$. Let's assume $\lambda_i$ are all distinct → There exists orthonormal basis of eigenvectors $\nlist{v}$. 

$$
A^TA v_j = \lambda_j v_j, ||v_j||+1
$$

$\ip{v_j}{v_k} = \delta_{jk} = \begin{cases} 1 & \text{if } j = k \\ 0 &\text{if } j\neq k\end{cases}$

We have to show taht for $x\in\R^n$

$$
\sqrt{\lambda_n} ||x|| \leq ||Ax|| \leq \sqrt{\lambda_1}||x||
$$

Let $x \in \R^n$, then there are coefficient $c_j\in\R$ so that $x = \sum_{j=1}^n c_j v_j$, then 

$$
||Ax||^2 = \ip{Ax}{Ax} = \ip{x}{A^TAx} = \ip{\sum_{j=1}^nc_jv_j}{A^TA \sum_{k=1}^n c_kv_k}
$$

$$
\begin{aligned}
= \sum_{j=1}^n \sum_{k=1}^n c_j c_k \ip{v_j}{A^TAv_k} \\
= \sum_{j,k=1}^n c_jc_k \ip{v_j}{\lambda_kv_k} \\
= \sum_{j, k=1}^n c_jc_k \lambda_k \ip{v_j}{v_k} \\
= \sum_{j=1}^n c_j^2\lambda_j
\end{aligned}
$$

$$
||Ax||^2 = \sum_{j=1}^n c_j^2 \lambda_j \leq \lambda_1 \sum_{j=1}^n c_j^2 = \lambda_1 ||x||^2
$$

$$
||Ax||^2 = \sum_{j=1}^n c_j^2 \lambda_j \geq \lambda_n\sum_{j=1}^n c_j^2 = \lambda_n ||x||^2
$$

so 

$$
\begin{aligned}
\lambda_n ||x||^2 \leq ||Ax||^2 \leq \lambda_1 ||x||^2 \\
\sqrt{\lambda_n}||x|| \leq ||Ax|| \leq \sqrt{\lambda_1}||x|| \\
\sqrt{\lambda_n} \leq \frac{||Ax||}{||x||} \leq \sqrt{\lambda_1}, x \neq 0
\end{aligned}
$$

# Chapter 4

functions:

$$
f(x) \in \R^m, x \in \R^n
$$

$$
f(x) = \begin{cases} f_1(\nlist{x}) \\ f_2(\nlist{x}) \\...\\f_m(\nlist{x})\end{cases}
$$

Special case: $m = 1$, then $f: \R^n \mapsto \R$.

$$
f(\nlist{x})
$$

it has a graph

$$
g = \begin{cases}\begin{bmatrix}x_1\\x_2\\...\\x_n\\f(x_1,x_2,...,x_n)\end{bmatrix} \in \R^{n+1}\end{cases}
$$

so for $n=2$ we get a 3D graph.

## Linear approximation

$$
f: \R^n \mapsto \R^m
$$

which is equivalent to $f(x) \in \R^m, x \in \R^n$

Derivative matrix

$$
Df = \begin{bmatrix}\frac{df_1}{dx_1}&\frac{df_1}{dx_2}&...&\frac{df_1}{dx_n}\\\frac{df_2}{dx_1}&\frac{df_2}{dx_2}&...&\frac{df_2}{dx_n}\\...&...&...&...\\\frac{df_m}{dx_1}&\frac{df_m}{dx_2}&...&\frac{df_m}{dx_n}\end{bmatrix}
$$

The _ a point $\hat{x} \in \R^n$

$$
f(x) = f(\hat{x}) + Df(\hat{x})(x-\hat{x}) + o(||x - \hat{x}||)
$$

_**Notation**_: 

*"little o"*: 

we say $\phi(s) = o(s)$ if $\frac{\phi(s)}{s} \rightarrow 0$ as $s \rightarrow 0$.

*"Big O"*:

we say $\phi(s) = O(s)$ if there exist a constant $C$ so that $|\phi(s)| \leq C \cdot |s|$

# Homework (Entertainment!)

pg 77

5.3, 5.6, 5.10