% Homework 1
% Minyoung Heo
% Jan 9 2024

# 2.8

\newcommand{\boldx}{\mathbf{x}}
\newcommand{\boldy}{\mathbf{y}}
\newcommand{\boldz}{\mathbf{z}}
\newcommand{\innerprod}[2]{\left<#1, #2\right>}

$$
\innerprod{\boldx}{\boldy}_2 = 2x_1 y_1 + 3x_2 y_1 + 3x_1 y_1 + 5x_2 y_2
$$

**1. Positivity**

$$
\begin{aligned}
\innerprod{\boldx}{\boldx}_2 = 2x_1 x_1 + 3x_1 x_2 + 3x_1 x_2 + 5x_2^2 \\
= 2x_1^2 + 6x_1 x_2 + 5x_2^2 \\
= 2(x_1^2 + 3x_1 x_2 + \frac{5}{2} x_2^2) \\
= 2(x_1^2 + 3x_1 x_2 + \frac{9}{4} x_2^2 + \frac{1}{4}x_2^2) \\
= 2(x_1 + \frac{3}{2}x_2)^2 + \frac{1}{2}x_2^2 \geq 0
\end{aligned} 
$$

It's easy to see that if $x=0$, then $\innerprod{\boldx}{\boldx}_2 = 0$

Now suppose $\innerprod{\boldx}{\boldx}_2 = 2(x_1 + \frac{3}{2}x_2)^2 + \frac{1}{2}x_2^2= 0$. That means

$2(x_1 + \frac{3}{2}x_2)^2 = -\frac{1}{2}x_2^2$ where $-\frac{1}{2}x_2^2 \leq 0$ and its equality is only when $x_2 = 0$.

Plugging it back in, $2(x_1 + \frac{3}{2}x_2)^2 \leq 0$ can only be true when $2(x_1 + \frac{3}{2}x_2^2)^2 = 0$ so $\boldx = 0$

**2. Symmetry**

$$
\begin{aligned}
\innerprod{\boldx}{\boldy}_2 = 2x_1 y_1 + 3x_2 y_1 + 3x_1 y_2 + 5x_2 y_2 \\
= 2y_1 x_1 + 3y_1 x_2 + 3y_2 x_1 + 5y_2 x_2 \\
= 2y_1 x_1 + 3y_2 x_1 + 3y_1 x_2 + 5y_2 x_2 \\
= \innerprod{\boldy}{\boldx}_2
\end{aligned}
$$

**3. Additivity**

$$
\begin{aligned}
\innerprod{\boldx+\boldy}{\boldz}_2 = 2(x_1 + y_1) z_1 + 3(x_2 + y_2)z_1 + 3(x_1 + y_1)z_2 + 5(x_2 + y_2)z_2 \\
= 2x_1 z_2 + 3x_2 z_1 + 3x_1 z_2 + 5x_2 z_2 + 2y_1 z_1 + 3y_2 z_1 + 3y_1 z_2 + 5y_2 z_2 \\
= \innerprod{\boldx}{\boldz} + \innerprod{\boldy}{\boldz}
\end{aligned}
$$

**4. Homogeneity**

$$
\begin{aligned}
\innerprod{r\boldx}{\boldy} = 2(rx_1)y_1 + 3(rx_2)(y_1) + 3(rx_1)y_2 + 5(rx_2)y_2 \\
= r(2x_1 y_1 + 3x_2 y_1 + 3x_1 y_2 + 5x_2 y_2) \\
= r \innerprod{\boldx}{\boldy}
\end{aligned}
$$

---

# 2.9

$$
\begin{aligned}
\boldx = (\boldx - \boldy) + \boldy \\
||\boldx|| = ||(\boldx - \boldy) + \boldy|| \leq ||\boldx - \boldy|| + ||\boldy|| \\
\rightarrow ||\boldx - \boldy|| \geq ||\boldx|| - ||\boldy||
\end{aligned}
$$


---

# 2.10

Since $||\boldx - \boldy|| < \delta$,

$$
\left| ||\boldx|| - ||\boldy|| \right| < \delta
$$
And we can let $\delta = \epsilon$.

---

# 3.8

$$
\begin{aligned}
A = \begin{bmatrix}
4 & -2 & 0 \\
2 & 1 & -1 \\
2 & -3 & 1
\end{bmatrix} = \begin{bmatrix}
4 & -2 & 0 \\
0 & 2 & -1 \\
0 & -2 & 1
\end{bmatrix} = \begin{bmatrix}
4 & -2 & 0 \\
0 & 2 & -1 \\
0 & 0 & 0
\end{bmatrix} = \begin{bmatrix}
4 & 0 & -1 \\
0 & 2 & -1 \\
0 & 0 & 0
\end{bmatrix}  \\
\end{aligned}
$$

$$
\begin{aligned}
2x_2 = x_3 \rightarrow x_2 = \frac{1}{2} x_3\\
4x_1 = x_3\rightarrow x_1 = \frac{1}{4}x_3 \\
\rightarrow N(A) = \text{span of } \Biggl\{ \begin{bmatrix} \frac{1}{2} \\ \frac{1}{4} \\ 1 \end{bmatrix} \Biggl\}
\end{aligned}
$$


---

# 3.9 

$R(A)$:

Existence of 0:

$R(\mathbf{0}) = 0$ for any $m\times n$ zero matrix $\mathbf{0}$

Closure under vector addition:

Let $R(A) \in \R^m$ and $R(B) \in \R^m$ for $m \times n$ matrices $A$ and $B$.

We can see that the span $\{Ax + By$ for any $x, y \in \R^m\}$ $\in \R^m$. Since $Ax$ and $By$ are both vectors $\in \R^m$, and vectors are closed under vector addition, $Ax + By \in \R^m$. 

Therefore, $R(A) + R(B) \in \R^m$ and thus the range is closed under vector addition.



