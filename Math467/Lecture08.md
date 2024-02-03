% Lecture 8
% Math 467
% Jan 26 2024

# FONC

$$
f: \Omega \rightarrow \R
$$

$\Omega \subset \R^n$, differentiable

assume: $\begin{cases}x^* & \text{is a local minimizer} \\ d & \text{feasible direction} \end{cases}$

Then

$$
d^Tf(x^*) \geq 0
$$

## Corollary

If $x^*$ is an interior point, $\nabla f(x) = 0$

# SONC

$$
f:\Omega \mapsto \R
$$

$\Omega \subset \R^2$, in $C^2$. 

assume: $\begin{cases} x^* & \text{is a local minimizer} \\ d^TDf(x^*) \geq 0 & \text{for all feasible directions }d \end{cases}$.

Then $d^T F(x^*) \geq 0$ where $F$ is the Hessian matrix

_Remark_ If $x^*$ is an interior point, the quadrative form $d^T F(x^*) d$ is positive semidefinite. 

_Proof_ (By contradiction)

Suppose $x^*$ is a local minimizer and there exists a feasible direction $d$ such that $d^T F(x^*) d < 0$. Put $x(\alpha) = x^* + \alpha d$ and all $x(\alpha) \in \Omega$. We have $f(x(0)) = f(x^*) \leq f(x(\alpha)) = f(x^* + \alpha d)$. Put $\phi(\alpha) = f(x(\alpha))$. Then 

$$
\begin{aligned}
\phi(0) = f(x^*) \\
\phi^\prime(0) = d^T Df(x^*) = 0
\end{aligned}
$$

By Taylor's Approximation

$$
\phi(\alpha) = \phi(0) + \alpha \phi^\prime(0) + \frac{1}{2} \alpha^2 \phi ^{\prime\prime}(0) + r_3(\alpha)
$$
We can make 

$$
\begin{aligned}
r_3(\alpha) = o(\alpha^2)\\
\text{Thus } \frac{r_3(\alpha)}{\alpha^2} \rightarrow 0 \text{ as } \alpha \rightarrow 0
\end{aligned}
$$


Note:

$$
\phi^{\prime\prime}(0) = d^T F(x^*) d
$$

Since $\phi^{\prime \prime} < 0$, $|\phi^{\prime \prime}| > 0$. There exists $\epsilon > 0$ (without loss of generality $\epsilon < \alpha_0$). 

$$
\left| \frac{r_3(\alpha)}{\alpha^2} \right| < \frac{1}{2}\left|\phi^{\prime \prime} (0)\right|
$$

for all $0 < \alpha < \epsilon$

$$
\begin{aligned}
\rightarrow |r_3(\alpha)| < \frac{1}{2} \alpha^2 |\phi^{\prime \prime}(0)| \\
\rightarrow \phi(\alpha) = \phi(0) + \frac{1}{2} \alpha^2\left(\phi^{\prime \prime} + \frac{r_3(\alpha)}{\alpha^2}\right) \\
\rightarrow \phi(\alpha) < \phi(0) - \frac{1}{2} \alpha^2 |\phi^{\prime \prime}(0)|
\end{aligned}
$$

But $\phi(0) = f(x^*)$ and this contradicts the assumption that $x^*$ is a local minimizer (You cannot "go down"). Therefore, $\phi^{\prime \prime}(0) = d^T F(x^*) d \geq 0$ since it cannot be negative. 

## Examples

### Example 1

$$
f(x_1, x_2) = x_1^2 + x_2^2, \Omega = \R^2
$$

Find critical points.

$$
\nabla f = \begin{pmatrix}2x_1 \\ 2x_2\end{pmatrix}
$$

put $Df = 0$. $x^* = \begin{pmatrix}0\\0\end{pmatrix}$, So it satisfies FONC

Find the Hessian

$$
F = \begin{pmatrix}2& 0 \\ 0 & 2\end{pmatrix}
$$

The quadratic form is positive definite because the eigenvalues are $>0$. 

$$
q(d) = d^T F(x^*) d
$$

So $x^*$ is a minimum. It is sufficient because the Hessian is positive definite (if it was semidefinite, it wouldn't be sufficient).

### Example 2

$$
f(x_1, x_2) = x_2^2 - x_1^2, \Omega = \R^2
$$

Look for critical points

$$
\nabla f = \begin{pmatrix} -2x_1 \\ 2x_2 \end{pmatrix}
$$

so $x^* = \begin{pmatrix} 0\\0\end{pmatrix}$

Now find the Hessian

$$
F = \begin{pmatrix}-2 & 0 \\ 0 & 2\end{pmatrix}
$$

Not positive definite, not even semidefinite, so "not happy"

### Example 3

$$
f(x_1, x_2) = x_1^4 + x_2^4 - 4x_1x_2 + 1, \Omega = \R^2
$$

$$
\nabla f = \begin{pmatrix} 4x_1^3 - 4x_2 \\ 4x_2^3 - 4x_1 \end{pmatrix}
$$

$4x_1^3 - 4x_2 = 0$ and $4x_2^3 - 4x_1=0$ → $x_2 = x_1^3$ and $x_1 = x_2^3$. $x_1 = (x_1^3)^3 = x_1^9$ → $x_1(1-x_1^8) = 0$ → $x_1^8 = 1$ so $x_1 = \pm 1$. or $x_1 = 0$ This gives us 3 critical points

$$
\begin{pmatrix}0\\ 0\end{pmatrix}, \begin{pmatrix}1\\ 1\end{pmatrix}, \begin{pmatrix}-1\\ -1\end{pmatrix}
$$

For SONC find the Hessian

$$
F = \begin{pmatrix}12x_1^2 & -4 \\ -4 & 12x_2^2\end{pmatrix}
$$

$$
\begin{aligned}
F(0, 0) = \begin{pmatrix} 0 & -4 \\-4 & 0 \end{pmatrix} \\
F(1, 1) = \begin{pmatrix}12 & -4 \\ -4 & 12 \end{pmatrix} = 4\begin{pmatrix}3&-1\\-1&3\end{pmatrix} \\
F(-1, -1) = 4\begin{pmatrix} 3 & -1 \\ -1 & 3\end{pmatrix}
\end{aligned}
$$

Eigenvalue of $\begin{pmatrix} 0 & -4 \\-4 & 0 \end{pmatrix}$ → $\lambda^2 -1 = 0$, so $\lambda = \pm 1$. So this is not a minimizer. 

Eigenvalue of $\begin{pmatrix} 3 & -1 \\ -1 & 3\end{pmatrix}$ → $\lambda^2 - 6\lambda + 8 = 0$ → $(\lambda-2)(\lambda -4) = 0$ → $\lambda = 2, 4$. They are both strictly positive, so they are minimizers. 

So, $d = \begin{pmatrix}1\\1\end{pmatrix}$ and $d = \begin{pmatrix}-1\\-1\end{pmatrix}$.

# Homework

6.13, 6.29