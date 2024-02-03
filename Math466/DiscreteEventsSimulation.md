% Discrete Events Simulation
% Lecture Notes
% Math 466

# Random Numbers

Basic random generator in Matlab

```
rand
- gives you a number (0, 1)
```

# Math Modeling

1. **Deterministic**

You started in the same situation, then the results are almost always the same

- **Continuous Time**

- **Discrete Time** (Many times we're limited to some kind of clock)

2. **Stochastic**

You started in the same situation, but ended up somewhere completely different

- **Continuous Time**

- **Discrete Time**


```
Often it's easier to see how a system changes, then see how it evolves
```

## Fibonacci Sequence

$$
\begin{aligned}
x_0 = 1, x_1= 1 \\
1, 1, 2, 3, 5, 8, 13, 21 …
\end{aligned}
$$

This obeys a difference equation such that $x_{n+1} = x_n + x_{n-1}$ with initial conditions $x_0 = 1, x_1 = 1$. The way you solve it is by guessing a solution $x_n = \lambda^k$. Try to find $\lambda$. 

$$
\begin{aligned}
\lambda^{k+1} = \lambda^k + \lambda^{k-1} \\
\lambda^{k+1} - \lambda^k - \lambda^{k-1} = 0 \\
\lambda^{k-1} [ \lambda^2 - \lambda - 1] = 0 \\
\lambda^2 - \lambda - 1 = 0 \\ 
\lambda = \frac{1 \pm \sqrt{1 + 4}}{2} = \frac{1 \pm \sqrt{5}}{2} \\
\approx 1.6
\end{aligned}
$$

This is the Golden section. The solution is $x_n = c_1 \lambda_+^k + c_2 \lambda_-^k$. Find $c_1$ and $c_2$. $x_0 = 1$, $x_1 = 1$. We can take the limit $\lim_{k\rightarrow \infty} \frac{x_{n+1}}{x_n} =$the Golden section.

## Towers of Hanoi

What is the minimum number of moves to achieve goal? Let $y_k$ be that number. $y_1 = 1$, $y_2 = 3$. Turns out if we know how to do it for $k$th step, when doing $k+1$th step, we move once, and move the $k$ over. $y_{k+1} = y_k + 1 + y_k = 2y_k + 1$. The fibonacci sequence was _homogeneous_ because all terms involves some $x_n$, but this one is no longer homogenous. But it is linear. 

$$
\begin{aligned}
y_{k+1} = 2y_k \\
y_{k+1}-2y_k = 0\\
y_k = \lambda^k \\
\lambda^{k+1} - 2\lambda^k = 0\\
\lambda^k(\lambda-2) = 0\\
\lambda = 2\\
y_k^H = l\cdot 2^k\\
\end{aligned}
$$

The particular solution, we can find $y_k^P = -1$. So $y_k=l\cdot 2^k - 1$. Since we want $y_1 = 1$, $l = 1$, so $y_k = 2^k-1$.