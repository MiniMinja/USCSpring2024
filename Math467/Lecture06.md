% Lecture 6
% Math 467
% Jan 22 2024

# Taylor Expansions

2 cases, $f: \R^n \mapsto \R^ms$:

1. n = m = 1

if $f \in C^l$ ($l$ continuous derivatives)

$$
f(x) = \sum_{j=0}^{l-1} \frac{f^{(i)} (x^*)}{i!}(x-x^*) + R_l(x)
$$

where 

$$
R_l(x) = \frac{f^{(l)}\tilde{x}}{l!}(x-x^*)^l
$$

where $\tilde{x} = x + \eta(x-x^*)$ for some $\eta \in [0,1]$.

**Remark**:

if $||x-x^*|| < 1$, then $R_l(x) = O(||x-x^*||^l)$.

2. m=1.

Take a base point $x^* \in \Omega \subset \R^n$. 

$$
f(x) = f(x^*) + Df(x^*)(x-x^*) + \frac{1}{2!}(x-x^*)^T D^2f(x^*)(x-x^*) + R_3
$$

where $Df = \begin{pmatrix}\frac{\partial f}{\partial x_1}, ...., \frac{\partial f}{\partial x_n}\end{pmatrix} = \nabla f^T$ and 

$$
D^2f = \begin{bmatrix} \frac{\partial^2 f}{\partial x_1^2} & \frac{\partial^2 f}{\partial x_2 x_1} & …& \frac{\partial^2 f}{\partial x_nx_1} \\
\frac{\partial^2 f}{\partial x_1x_2} & … & … & … \\
... &...&...&...\\
 \frac{\partial^2 f}{\partial x_1x_m} & \frac{\partial^2 f}{\partial x_2x_m}& ...& \frac{\partial^2 f}{\partial x_m^2}\end{bmatrix}
 $$
$R_3 = o(||x-x^*||^2)$ and if $f\in C^3$, $R_3 = O(||x-x^*||^3)$.

# Optimization

Given a function $f:\Omega \mapsto \R$, where $\Omega \subset \R^n$. Problem is to minimize $f$. There are 2 cases:

1. unconstrained problem: $\Omega = \R^n$

2. constraint problem: $\Omega \neq \R^n$

$\Omega$ could be of the form

$$
\Omega = \{x \in \R^n: h(x) = 0\}
$$

(hypersurface)

or 

$$
\Omega = \{x \in \R^n: h(x) \leq 0\}
$$

Definition:

1. $x^* \in \Omega$ is a _local_ minimizer (you don't go too far) on $f(\Omega)$ if $\exists \epsilon > 0$ such that $f(x) \geq f(x^*)$ for all

$$
\begin{cases}x \in \Omega : \{x^*\} \\ ||x-x^*|| < \epsilon\end{cases}
$$

2. $x^*$ is a global minimizer of $f$ in $\Omega$ such that $f(x) \geq f(x^*)$ for all $x\in\Omega : \{x^*\}$.

strict local, gloal minimise if $f(x) > f(x^*)$.

## Notation

if minimiser $x^*\in \Omega$ is unique then 

$$
x^* = \min_{x\in\Omega} f(x)
$$

## Example

$$x(x-2) = f(x), \Omega = \R$$

has $\min_{x\in\R} f(x)$. $x^* = 1$ is a local minimum. $f(x) = x^2 -2x +1 -1 = (x-1)^2-1$, but since $(x-1)^2 \geq 0$, $f(x) \geq -1$. 

## Conditions for Minimizers (FONC, SONC)

Def: Let $\Omega \in \R^n$, Let $x \in \Omega$. We say $d \in \R^n$ (vector) is feasible direction if 

$$
\exists \alpha_0 > 0 \text{ s.t. } x+\alpha d \in \Omega \quad\forall\quad 0\leq \alpha \geq \alpha_0
$$

**Remark**:

1. One can assume that $||d|| = 1$.

2. If $x$ is interior point of $\Omega$.

(Interior point: $x \in \Omega$ if $\exists \epsilon > 0$ so that $B_\epsilon(x) \subset \Omega$.

(The ball)

$$
B_\epsilon(x) = \{y \in \R^n: ||x-y||<\epsilon\}
$$

)

then $\exists \epsilon>0$ so that for every $d \in \R$, $||d|| = 1$. $x + \alpha d \in B_\epsilon(x) \subset \Omega \quad \forall \quad 0\leq \alpha<\epsilon$. so take $\alpha_0 = \frac{\epsilon}{2}$. Which means all $d\in\R^n$ are feasible directions.

3. $f:\Omega \in \R$ (differentiable). Let $d\in\R^n$ be a feasible direction. Then $\frac{\partial }{\partial d} f(x) = \frac{d}{d\alpha} f(x + \alpha d) \vert_{\alpha=0} = d^T Df(x)$. (In Calc 3, you assume $||d|| = 1$. Then $\frac{\partial }{\partial d} f = (Df)(x)\cdot d = \ip{d}{Df(x)} = d^T Df(x)$ → $\frac{\partial}{\partial p}f(x)$ - n directional derivative m direction of d.)

# Homework

