% Lecture 4
% Math 467

# Quadratic Forms

$Q \in \R^{n \times n}$ 

define the quadratic form:

$$
f(x) = x^T Q x = \sum_{i,j=1}^n x_i Q_{ij} x_j
$$

that is $f: \R^n \mapsto \R$

_**Remark**_:

We can assume that $Q^T = Q$. _Note_: $x^TQx = \sum_{i,j=1}^n x_i Q_{ij} x_j = \sum_{i,j}^n x_i Q_{ji} x_j = x^T Q^T x$. 

Then put 

$$
\tilde{Q} = \frac{1}{2}(Q + Q^T)
$$

evidently $\tilde{Q} = \tilde{Q}^T$ and 

$$
x^T \tilde{Q} x = \frac{1}{2}(x^TQx + x^TQ^Tx) = \frac{1}{2}(x^TQx + x^TQx) = x^TQx
$$

[Definition]{.underline} 

1. We say $f$ is positive definite if $f(x) > 0$ for all $x \neq 0$.

2. $f$ is positive semidefinite if $f(x) \geq 0$ for all $x \in R^n$

3. Similarly for negative (semi)definite

## When is a quadratic form positive definite?

1. **Sylvestri's Criterion**:

Q is positive definite if determinants of all minors are positive (the minor in this $Q=\begin{bmatrix}A&b&c&...\\d&e&f&...\end{bmatrix}$ is $A$)



2. _Theorem_) $f(x) = x^TQx$ is positive definite if and only if all eigenvalues are positive.

_Proof_) $Q =Q^T$ → all eigenvalues $\lambda_1, \lambda_2, … , \lambda_n \in \R$. For simplicity, they are distinct. Then if $v_1, v_2, ..., v_n$ are associated eigenvectors, they are orthogonal. Assume $||v_j|| = 1$. → $v_1, v_2, … v_n$ are orthonormal basis. If

$$
T = (v_1, v_2, … v_n) \in \R^{n\times n}
$$

$T$ is orthogonal basis → $T^T = T^{-1}$ (becase $T^TT = I$). In the basis $(v_1, v_2, …, v_n)$

$$
\tilde{Q} = T^TQT = \begin{bmatrix}\lambda_1&...&0\\0&\lambda_2&...\\...&...&...\\0&0&\lambda_n\end{bmatrix}
$$

let $x \in \R^n$. put $y = T^{-1}x = T^Tx$ (i.e $x=\sum_{j=1}^n y_j v_j$). Then $x = Ty$ and $x^T = y^TT^T$.

$$
\begin{aligned}
f(x) = x^TQ x = y^T T^TQT y = \tilde{Q} \\
= y^T\tilde{Q}y = \sum_{i,j}^ny_i \tilde{Q}_{ij}y_j \\
= \lambda_i \delta_ij \\
= \sum_{i=1}^n y_i y_i \lambda_i = \sum_{i=1}^n y_i^2 \lambda_i
\end{aligned}
$$

Now $f$ is positive definite if and only if all $\lambda_i > 0$. Similarly $f$ is postitive semidefinite if and only if $\lambda_i \geq 0$ for all $i$.

_Ex_)

$$
Q = \begin{bmatrix}1&\frac{1}{2}\\\frac{1}{2}&1\end{bmatrix}
$$

Find eigenvalues:

$$
P(\lambda) = \lambda^2 - 2\lambda + \frac{3}{4}
$$

$$
\lambda_1, 2 = 1\pm \sqrt{\frac{1}{4}} = 1\pm \frac{1}{2} = \begin{cases}\frac{3}{2}\\ \frac{1}{2}\end{cases}
$$

$\lambda_1, \lambda_2 > 0$ → $f(x) = x^TQx$ is positive definite. In fact, for $f(x) = \begin{bmatrix}x_1&x_2\end{bmatrix}\begin{bmatrix}1&\frac{1}{2}\\\frac{1}{2}&1\end{bmatrix}\begin{bmatrix}x_1\\x_2\end{bmatrix} = x_1^2 + x_2^2 + \frac{1}{2}x_1x_2 + \frac{1}{2}x_1x_2$. $f(x) = x_1^2 + x_2^2 + x_1x_2$.


_Ex 2 (trivial)_

$$
Q = \begin{bmatrix}1&0&0\\0&2&0\\0&0&3\end{bmatrix}
$$

_Ex 3(trivial)_

$$
Q =\begin{bmatrix}1&\frac{1}{2}&0\\\frac{1}{2}&1&0\\0&0&3\end{bmatrix}
$$

eigenvalues: one of them is (trivially) 3. The other 2 are the same as the 1st example.

# Measuring Sizes of Matrices

[Norms of Matrices]{.underline}

$$
A \in \R^{n\times n}
$$

(or $\in \C^n \times n$). $||\cdot||$ is a matrix norm if

1. $||A|| \geq 0$ and $||A|| = 0$ if and only if $A=0$

2. $||\alpha A|| = |\alpha| \cdot ||A||$ for $\alpha \in \R$ (or $\C$)

3. $||A + B|| \leq ||A|| + ||B||$ (triangle inequality)

4. $||A \cdot B|| \leq ||A|| \cdot ||B||$ 

## Frobenius norm 

in $\R^{n \times n}$

$$
||A||_F = \left(\sum a_{ij}^2\right)^{\frac{1}{2}}
$$

## Induced Norm

$$
||A|| = \max_{||x||=1} ||Ax||
$$

which means "if $||x|| = 1$, then $||Ax|| \leq ||A||$". 

if $v \in \R^n$, $||v||>0$, then put $x = \frac{v}{||v||}$. now $||x||=1$. $||A \frac{v}{||v||}|| = \frac{1}{||v||}||Av|| \leq ||A||$ → $||Av|| \leq ||A|| \cdot ||v||$.

$$
||A|| = \max_{v\neq 0} \frac{||Av||}{||v||}
$$

$A \in \R^{n \times n}$, $A: \R^n\mapsto\R^n$. 

_**Theorem**_) The induced norm is a norm that also satisfies 4. 

_Proof_ 

1. $||A|| \geq 0$ as $||Ax|| \geq 0$ for all $x\neq 0$. $||A|| = 0$ if and only if $||Ax|| = 0$ for all $||x||=1$ (or $A=0$)

2. $||\alpha A|| = \max_{||x||=1} ||\alpha Ax|| = |\alpha| \max_{||x||=1} ||Ax|| = |\alpha| ||A||$

# Homework

pg 40

3.17, 3.22