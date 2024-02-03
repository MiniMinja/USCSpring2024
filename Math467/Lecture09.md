% Lecuture 9
% Math 467
% Jan 29 2024

# One-dimensional Search Methods

## Golden Mean

_We have to assume a **UNIQUE** minimizer_. Other minimizers are not allowed.

Assume we have $f: I \mapsto \R$, $I \subset \R$ interval. Assume $f$ has a unique minimizer $x^*$ in $I = [a_0, b_0]$. Find a good approximation for $x^*$, say, numerically. 

First cut the interval $[a_0, b_0]$ into 3 pieces $[a_0, \alpha_0], [\alpha_0, \beta_0], [\beta_0, b_0]$. So that $|(a_0, \alpha_0)| = |(\beta_0, b_0)| = \rho|(a_0, b_0)|$ where $\rho < \frac{1}{2}$. If $f(\alpha_0) > f(\beta_0)$, then $x^*$ lies in $(\alpha_0, b_0)$. Put $I_1 = (a_1, b_1) = (\alpha_0, b_0)$. If $f(\alpha_0) < f(\beta_0)$, $x^*$ lies in $(a_0, \beta_0)$, so put $I_1 = (a_1, b_1) = (a_0, \beta_0)$. Since it's symmetrical, we can take either case. Assume $f(\alpha_0) < f(\beta_0)$, we will recycle $\alpha_0 = \beta_1$. Then, $|(\beta_1, b_1)| = \rho |(a_1, b_1)| = \rho|(a_0, \beta_0)| = \rho(1-\rho)|(a_0, b_0)|$. Also, $|(\beta_1, b_1)| = |(\alpha_0, \beta_0)| = (1-2\rho) |(a_0, b_0)|$. These two are equal: $\rho(1-\rho) = 1-2\rho$,sove for $\rho$

$$
\begin{aligned}
\rho - \rho^2 = 1-2\rho \\
\rightarrow \rho^2 - 3\rho - \left(\frac{3}{2}\right)^2 = -1 + \left(\frac{3}{2}\right)^2 \\
\rightarrow \rho_{1,2} = \frac{3}{2} \pm \sqrt{\frac{5}{4}} = \frac{3 \pm \sqrt{5}}{2}
\end{aligned}
$$

For we choose this $\rho_1 = \frac{3-\sqrt{5}}{2}$ so that it's $< \frac{1}{2}$. 

Let $|I_0| = |(a_0, b_0)|$, then $|I_1| = (1-\rho)|I_0|$. $|I_2| = (1-\rho)|I_1| = (1-\rho)^2|I_0|$. and so on… After $n$ steps, we get an interval $|I_n| = (1-\rho)^n|I_0|$. $I_n$ is the uncertainty interval, and we improve by $1-\rho$ each iterate. $1-\rho = 1-\rho_1 = 1 - \frac{3-\sqrt{5}}{2} = \frac{\sqrt{5}-1}{2} = 0.618...$ (which is the golden mean). 

_Example_

Suppose starting uncertainty interval $I_0$ has length 1. We want to get $x^*$ with accuracy $\frac{1}{1000} = 0.001$. Question: How many iterates do you need? $n = \min_k \left(\frac{\sqrt{5}-1}{2}\right)^k \leq \frac{1}{1000} = 15$. 

## Fibonacci

Similar, but we vary the $\rho$. $I_0 = (a_0, b_0)$. Cut it into three parts again. Do it in such a way such that $|(a_0, \alpha_0)| = |(\beta_0, b_0)| = \rho_1|I_0|$. If $f(\alpha_0)<f(\beta_0)$, $I_1 = (a_0, \beta_0)$. And if $f(\alpha_0) > f(\beta)$, $I_1 = (\alpha_0, b_0)$. At the next step, assuming $f(\alpha_0) < f(\beta_0)$, then $|(\beta_1, b_1)| = \rho_2 |I_1| = \rho_2(1-\rho_1)(I_0) = (1-2\rho_1)|I_0|$. We get a recursive condition on each sucessive $\rho_k$

$$
\begin{aligned}
\rho_2(1-\rho_1) = (1-2\rho_1) \\
\rightarrow \rho_2 = \frac{1-2\rho_1}{1-\rho_1} = \frac{1-rho_1-\rho_1}{1-\rho_1} \\
= 1-\frac{\rho_1}{1-\rho_1}
\end{aligned}
$$

We get recursive formula

$$
\rho_{k+1} = 1 - \frac{\rho_k}{1-\rho_k}
$$

uncertainty interval $I_n$ after $n$ steps

$$
|I_n| = (1-\rho_1)(1-\rho_2)(1-\rho_3)...(1-\rho_n)|I_0|
$$

An optimal choice: using the fibonacci sequence (the proof is in the book)

$$F_1, F_2, ....$$

Given by a 2-step recursion:

$$
F_{k+1} = F_k + F_{k-1}, \text{ initially } F_{-1} = 0, F_1 = 1
$$

$$
0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, …
$$

Or we can also write, 

$$
\begin{pmatrix}F_{k+1}\\F_k\end{pmatrix} = \begin{pmatrix}1&1\\1&0\end{pmatrix}\begin{pmatrix}F_k \\ F_{k-1}\end{pmatrix}
$$

$$
\rightarrow \begin{pmatrix}F_k+1\\F_k\end{pmatrix} = \begin{pmatrix}1&1\\1&0\end{pmatrix}^k\begin{pmatrix}F_k\\F_{k-1}\end{pmatrix}
$$

We can find this using eigenvalues

$\lambda_1 = \frac{1-\sqrt{5}}{2} \in (-1, 0)$

$\lambda_2 = \frac{1+\sqrt{5}}{2}$ (the golden mean, which is more generously used so it can kind of mean multiple things)

So → $F_k \sim \lambda_2 ^ k$. 

One can choose for some $N$, $\rho_k = 1 - \frac{F_{N-k+1}}{F_{N-k+2}}$, then $\rho_{k+1} = 1 - \frac{\rho_k}{1-\rho_k}$.

For the interval of uncertainty

$$
|I_n| = |I_0| \Pi_{k=1}^N(1-\rho_k) = |I_0|\Pi_{k=1}^N \frac{F_{N-k+1}}{F_{N-k+2}} = |I_0| \frac{F_1}{F_{N+1}}
$$

$$
|I_n| = |I_0|\frac{1}{F_{N+1}} = |I_0||\lambda_1^{N+1}| = |I_0|\frac{\sqrt{5}-1}{2}^{N+1}
$$


We aren't ahead too much than the other method (maybe by 1 or 2 iterates).

### Some theorem

 Fibonacci is optimal for $\rho_{k+1} = 1-\frac{\rho_k}{1-\rho_k}$ with respect to uncertainty interval. 

## Newton

## Secant