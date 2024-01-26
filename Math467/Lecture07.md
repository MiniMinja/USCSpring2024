% Lecture 7
% Math 467
% Jan 24 2024

$f: \Omega \mapsto \R, \Omega \subset \R^n$

restricted problem if $\Omega \neq \R^n$
unrestricted problem if $\Omega = \R^n$

Assume if differentiable, $d \neq 0$, $d \in \R^n$ is a feasible direction at $x \in \Omega$, if $\exists \alpha_0 > 0$ so that $x + \alpha d \in \Omega \forall 0\leq \alpha \leq \alpha_0$. 

_Remark_

1. x interior point if and only if every $d \in \R^n$ is a feasible direction

2. (directional derivative, $||d|| = 1$)

$$
\frac{\partial}{\partial d} = d^T Df(x)
$$

(_Example_) Given $n=3$, $f: \R^3 \mapsto f$

$$
f(x_1, x_2, x_3) = 2(x_1 + x_2 + x_2x_3)
$$

$$
= 2x_1 + 2x_2 + 2x_2 x_3
$$

Our direction:

$$
d = \begin{pmatrix}1\\2\\3\end{pmatrix}\frac{1}{\sqrt{14}}
$$

Gradient

$$
Df(x) = \begin{pmatrix}2 \\ 2+2x_3 \\ 2+2x_2\end{pmatrix}
$$

$x = (x_1, x_2, x_3)$. 

$$
\begin{aligned}
\frac{\partial}{\partial d} f = d^T Df(x) = \frac{1}{\sqrt{14}} (1, 2, 3)\begin{pmatrix}2\\2+2x_3\\2+2x_2\end{pmatrix} \\
 = \frac{2}{\sqrt{14}} (1 + 2 + 2x_3 + 3x_2) 
 \end{aligned}
 $$

at $\tilde{x} = (6, 8, 4)$

$$
\frac{\partial}{\partial p} f(\tilde{x}) = \frac{2}{\sqrt{14}} (3 + 2\cdot 4 + 3\cdot 8) = \frac{70}{\sqrt{14}}
$$

# First Order Necessary Condition (FONC)

Let $f:\Omega \mapsto \R$, $\Omega \subset \R^3$, be differentiable. Assume $\begin{cases} x* & \text{ is a local minimizer} \\ d & \text{feasible direction}\end{cases}$. Then

$$
d^TDf(x*) \geq 0
$$

_What it means_

## Corollary

If $x^*$ is an interior point of $\Omega$, then $\nabla f(x^*) = 0$.

_Proof_

$x$ interior point of $\Omega$ means that $d$ is feasible and $-d$ is also feasible. $d$ being feasible implies $d^T Df(x^*) \geq 0$. $-d$ being feasible implies $(-d)^TD(f(x^*)) \geq 0$ or $-(d^TDf(x^*)) \geq 0$. Thus $d^TDf(x^*) =0 \forall d$.

## Proof of FONC

Let $x^*$ be a local minimizer and $d$ a feasible direction. $x(\alpha) = x^* + \alpha d \in \Omega$.  $\forall \quad \alpha \in [0, \alpha_0]$ for some $\alpha_0 > 0$. $\phi(\alpha) = f(x(\alpha)) = f(x^* + \alpha d)$. $\phi(0) = f(x^*)$. 

$x^*$ is a local minimizer implies $\epsilon > 0$ so that $\phi(\alpha) \geq \phi(0)$ for all $\alpha < \epsilon$. Taylor's Approximation

$$
\phi(\alpha) = \phi(0) + \alpha \phi^\prime(0) + r(\alpha)
$$

with remainder $r(\alpha) = o(\alpha)$. where $\phi^\prime(0) = d^TDf(x^*)$. We have to show $\phi^\prime(0) \geq 0$ (by contradiction). Assume $\phi^\prime(0) < 0$. Now, there exists an $\epsilon^\prime > 0$, $\epsilon^\prime < \epsilon$ so that $\left|\frac{r(\alpha)}{2}\right|< \frac{|\phi^\prime(0)|}{2} \forall 0 < \alpha < \epsilon^\prime$. This implies that $\phi(\alpha) \leq \phi(0) + \alpha \phi^\prime(0) + \alpha\frac{|\phi^\prime(0)|}{2} \forall \alpha \in (0, \epsilon^\prime)$.

$$
\begin{aligned}
\rightarrow \phi(\alpha) + \frac{\alpha}{2} \phi^\prime(0) < \phi(0) \\
f(x^* + \alpha d) < f(x^*) \forall \alpha \in (0, \epsilon^\prime)
\end{aligned}
$$
This contradicts the assumption that $x^*$ is a local minimizer. So $\phi^\prime(0) \geq 0$.

## Example

$n =2$,
$f(x_1, x_2) = x_1^2 + \frac{1}{2} x_2^2 + 3x_2 + \frac{9}{2}$

$$
\Omega = \{\begin{pmatrix}x_1\\x_2\end{pmatrix}: x_1\geq0, x_2\geq 0\}
$$

(it's the first quadrant)

For convenience, the gradient

$$
\nabla f(x_1, x_2) = \begin{pmatrix}2x_1\\x_2 + 3\end{pmatrix}
$$

1. $x^* = \begin{pmatrix}1\\3\end{pmatrix}$. Is this a local minimizer?

Feasible directions are all, $x^*$ is interior point.

$$
\nabla f(1, 3) = \begin{pmatrix}2 \\ 6 \end{pmatrix} \neq 0
$$

→ $x^* = (1, 3)$ is not a local minimizer.

2. Is $x^* = \begin{pmatrix}0\\3\end{pmatrix}$ is local minimizer? $x^* \in \partial \Omega$ (the boundary of $\Omega$). Feasible directions:

$d = \begin{pmatrix}a\\b\end{pmatrix}$, $a, b \in \R$. $d$ is feasible if $a \geq 0$. 

$$
d^T Df(0, 3) = (a, b)\begin{pmatrix}0\\6\end{pmatrix} = 6b
$$

Therefore, $a$ could be positive or negative. So $(0, 3)$ is not a local minimizer.

3. Is $x^* \begin{pmatrix}1\\0\end{pmatrix}$ a local minimizer?, $x \in \partial \Omega$  Feasible directions:

$$
d = \begin{pmatrix}a\\b\end{pmatrix}, a, b \in \R
$$

$b \geq 0$ (because it must go up)

$$
d^T D(f(1, 0)) = (a, b) \begin{pmatrix}2\\3\end{pmatrix} = 2a +3b
$$

→ (1, 0) is not a Local Minimizer

4. Is $x^* = \begin{pmatrix}0\\0\end{pmatrix}$ a local minimizer? Feasible directions

$d = \begin{pmatrix}a\\b\end{pmatrix}$ $a \geq 0, b\geq 0$

→ $d^T Df(0, 0) = (a, b) \begin{pmatrix}0\\3\end{pmatrix} = 3b \geq 0$ for all feasible directions → (0, 0) is a local minimizer.

# Second Order Necessary Condition (SONC)

Let $f:\Omega \mapsto \R$ be $C^2$ assume $\begin{cases} x^* & \text{is local minimizer} \\ d & \text{feasible direction} \\ d^TDf(x^*) = 0\end{cases}$.  Then 

$$
d^T Fd \geq 0
$$

Where $F$ is the Hessian matrix.

# Homework

pg 93
6.1, 6.4, 6.9, 6.10, 6.11