% Chapter 6
% Math 432

# Cycles in Permutations

(Not quite in the book, but similar)

Recall that a permutation on $n$ symbols can be decomposed into cycles (see [Chapter 3](Chapter03.md)). For example

$$
\begin{aligned}
\pi = 3,1,4,6,5,2 \\
(1,3,4,6,2), (2)
\end{aligned}
$$

Let $n_i(\pi)=$ number of cycles of $\pi$ of length $i$. So $n_1(\pi)=1$, $n_5(\pi) =1$, all other $n_i$s are 0. Ask: pick a random $\pi$ in $S_n$ (the permutations on $n$ symbols). How do the $n$s behave?

Clearly, if $\sum in_i \neq n$, the number of $\pi \in S_n$ with $n_1$ 1-cycles, $n_2$ 2-cycles, .… = 0. We proved earlier that if $\sum in_i \neq n$, then the number of $\pi \in S_n$ with $n_1$ 1-cycles, $n_2$ 2-cycles, …$= \frac{n!}{\Pi_i(i^{ni})(ni!)}$.

_Example_

How many $\pi \in S_n$ consist of one cycles of length $n$? 

Sol: $n_n(\pi)=1$, all other $n_i(\pi) = 0$. Let $\frac{n!}{n^1 \times 1!} = (n-1)!$

_Example 2_

How many $\pi \in S_n$ consist of 1 2-cycle and $n-2$ cycles of size 1? (called fixed points) ((Such $\pi$ are called "transpositions")). 

Sol: By "box", answer is $\frac{n!}{1^{n-2}(n-2)!2^1(1)!} = \frac{(n)(n-1)}{2}$. Alternatively, answer is $\begin{pmatrix}n\\2\end{pmatrix}$ since $\pi$  swaps two symbols and fixes the rest of them. 

_Example 3_

Def: Let $c(n, k) =$ number of $\pi \in S_n$ with $k$ many cycles (Sterling number of the first kind). Set $c(0, 0) = 1$, $c(n, k) = 0$ if $n < k$. 

# Theorem 

$$
c(n, k) = c(n-1, k-1) + (n-1)c(n-1, k)
$$

_Proof_:

Let's show that the RHS counts the number of permutations with exactly $k$ cycles. There's two cases:

1. $n$ is in a cycle of length 1. Then there's $k-1$ cycles for the $n-1$ remaining elements, which contributes to $c(n-1, k-1)$

2. $n$ is not in a cycle of length 1. Then take an element of $S_{n-1}$ symbols with $k$ cycles, and insert $n$ into 1 of $n-1$ positions. Example: $n = 6$: $(1, 4), (2, 3, 5)$. You can insert the 6 into $n-1$ positions. So this case contributes to $(n-1)c(n-1, k)$.

# Theorem

$$
\sum_{k=0}^n c(n, k)x^k = x(x+1)(x+2)...(x+n-1)
$$

_Test it out_: $n =3$

$$
\begin{aligned}
c(3, 1) = 2\\
c(3, 2) = 3 \\
c(3,3) = 1
\end{aligned}
$$

$$
x(2) + x^2(3) + x^3 = x(x+1)(x+2)
$$

_Proof_:

Define $F_n(x) = x(x+1)...(x+n-1) = \sum_{k=0}^n b(n,k)x^k$. We'll show $b(n, k) = c(n, k)$ by showing they satisfy the same recursion. Since $F_n(x) = (x+n-1) F_{n-1}(x)$

$$
\begin{aligned}
= xF_{n-1}(x) + (n-1)F_{n-1}(x) \\
= \sum_{k=1}^n b(n-1, k-1)x^k + (n-1)\sum_{k=0}^{n-1} b(n-1, k)x^k \\
\rightarrow b(n, k) = b(n-1, k-1) + (n-1)b(n-1, k)
\end{aligned}
$$

Since $b(n, k), c(n,k)$ satisfy the same recursion $b(n,k) = c(n, k)$ and the theorem is proved

# Cycle Index Theorem

"The Product Symbol"

$$
1 + \sum_{n\geq 1} \frac{u^n}{n!}\sum_{\pi\in S_n}\Pi_{i\geq 1} x_i^{n_i(\pi)} = \Pi_{m \geq 1} e^{\frac{x_m u^m}{m}}
$$

Here $n_i(\pi) =$ number of cycles of $\pi$ of length $i$. 

_Proof_:

Note, if $\sum in_i \neq n$, then coeffircient of $u^n x_1^{n_1}x_2^{n_1}...$ on both sides $= 0$.

So suppose $\sum in_i = n$. Then coefficient of $u^n x_1^{n_1}x_2^{n_2}...$ on left side $=\frac{1}{n!} \times$ (the number of $\pi in S_n$ with $n_1$ 1-cycles, $n_2$ 2-cycles ...)

$$
\begin{aligned}
= \frac{1}{n!} \frac{n!}{\Pi_{i\geq 1} i^{n_i} (n_i!)}\\
= \frac{1}{\Pi_{i\geq 1} i^n_i(n_i!)} 
\end{aligned}
$$

By the Taylor Expansion

$$
e^z = 1 + \frac{z^1}{1!} + \frac{z^2}{2!} + …
$$

the right hand side $= \Pi_{m \geq 1} (1 + (\frac{x_m u^m}{m})^1 + \frac{(\frac{x_m u^m}{m})^2}{2!} + ...)$.

So coefficient of $u^m x_1^{n_1} x_2^{n_2}… = \Pi_{i\geq 1} \frac{1}{i^{n_i}(n_i!)}$. These are equal, so we're done. 

## So What? Applications

1. Count the number of permutations in $S_n$ with no fixed points ($n_1(\pi) =0$). These are called _derangements_.

In cycle index, set $x_1 = 0, x_2=x_3=...=1$. Get 

$$
\begin{aligned}
1 + \sum_{n\geq 1} \frac{u^n}{n!} (\text{number of derangements}) = \Pi_{m\geq 2}e^{\frac{u^m}{m}} = \frac{1}{e^u} \Pi_{m\geq 1}e^{\frac{u^m}{m}} \\
= \frac{1}{e^u}e^{\sum_{m\geq 1} \frac{u^m}{m}} \\
= \frac{1}{e^u} e^{-(\log (1-u))}\\
= \frac{1}{e^u} \frac{1}{1-u} \\
= (1 + u + u^2 + ...) \frac{1}{e^u}
\end{aligned}
$$

Take the coefficient of $u^n$ on both sides. The proportion of derangements in $S_n$ = The coefficient of $u^n$ in $(1 + u + u^2 + ...) e^{-u} = \sum_{i=0}^n$coefficient of $u^i$ in $e^{-u}$ $= \sum_{i=0}^n \frac{(-1)^i}{i!}$. 

Note: as $n \rightarrow \infty$, this converges to $e^{-1} = \frac{1}{e}$. (Say how many permutations of 100 without any fixed points? we can approximate with $\frac{1}{e}$).

2. Let's compute the expected value of $n_1$

$$
E[n_i] = \text{ the average number of fixed points (cycles of size 1) of } \pi \in S_n
$$

_Example_

$n=3$

|$\pi$|$n_1(\pi)$|
|---|---|
|123|3|
|132|1|
|213|1|
|231|0|
|312|0|
|321|1|

So the average of $n_1(\pi)$ is 

$$
\frac{1}{6} (3 + 1 + 1 + 0 + 0 + 1) = 1
$$

In cycle index, set $x_1 = x$, other $x_i = 1$. Get 

$$
\begin{aligned}
1 + \sum_{n\geq 1} \frac{u^n}{n!} \sum_{\pi \in S_n} = e^{xu} \Pi_{m\geq 2}e^{\frac{u^m}{m}}\\
= \frac{e^{xu}}{e^u} \Pi_{m\geq 1}e^{\frac{u^m}{m}} \\
= \frac{e^{xu}}{e^u(1-u)}
\end{aligned}
$$

Now differentiate with respect to $x$ and set $x =1$.  Get

$$
1 + \sum_{n\geq 1} u^n (\text{average number of fixed points of }\pi \in S_n) = \frac{u}{1-u}
$$

Take coefficient of $u^n$ on both sides. Get

$$
(\text{average number of fixed points of }\pi \in S_n) = 1
$$

_**A Few Remarks**_

1. While $n\rightarrow \infty$, the distribution of number of fixed points of random $\pi \in S_n$ converges to Poisson(1) random variable.

Equivalently, for $j$-fixed 

$$
\lim_{n\rightarrow \infty} P(\pi \in S_n \text{ has $j$-fixed points}) = \frac{1}{e} \frac{1}{j!}
$$

(Prove this using cycle index)

2. More generally, if $n\geq i$, then the average of the number of $i$-cycles of $\pi \in S_n$ is quald to $\frac{1}{i}$. As $n \rightarrow \infty$, the distribution of the number of $i$-cycles converges to Poisson($\frac{1}{i}$) random variable. This means

$$
\lim_{n \rightarrow \infty} P(\pi \text{ has $j$ $i$-cycles}) = \frac{\left(\frac{1}{i}\right)^j}{e^\frac{1}{i}(j!)}
$$

(Prove this using cycle index)

# Let's resist counting permutations with a given number of cycles

In cycle index, set all $x_i = x$. We get

$$
\begin{aligned}
1 + \sum_{n\geq 1} \frac{u^n}{n!} \sum_{\pi \in S_n} x^{c(\pi)}\\
= \Pi_{m\geq 1}e^{\frac{xu^m}{m}} \\
= \left(\Pi_{m\geq 1}e^{\frac{u^m}{m}}\right) ^x\\
= \left(e^{\sum_{m\geq 1}\frac{u^m}{m}}\right) ^x\\
= \left(e^{-\log (1-u)}\right)^x \\
= \left(1-u\right)^{-x}
\end{aligned}
$$

where $c(\pi) =$ the number of cycles of $\pi$.

Take coefficient of $u^n$ on both sides. On left, get $\frac{1}{n!} \sum_{\pi \in S_n} x^{c(\pi)}$. On the right, get $\frac{1}{n!}x(x+1)(x+2)...(x+n-1)$.

_Why?_

Recall if 

$$
f(u) = \sum_{n \geq 0} a_n u^n
$$

then 

$$
a_n = \frac{1}{n!}f^{(n)}(0)
$$

Thus

$$
\frac{1}{n!}\sum_{\pi \in S_n} x^{c(\pi)} = \frac{1}{n!}(x)(x+1)(x+2)...(x+n-1)
$$

(We proved this earlier)

_**Remark**_

In "box", differentiate with respect to $x$ and set $x=1$. We get 

$$
\text{average number of cycles of a random permutation } = \frac{1}{1} + \frac{1}{2} + … + \frac{1}{n} \sim \log (n)
$$

# Cycles to Records Bijection

Given a permutation $\pi \in S_n$, there's a unique way to write it as a product of cycles where each cycle starts with its largest element and then you order cycles in increasing order of their largest elements. 

_Example_

$$
\pi = \begin{matrix} 1&2&3&4&5&6&7 \\ 6&7&4&3&5&1&2\end{matrix}
$$

So $\pi = (1,6)(2,7)(3, 4)(5)$. Starting each cycle with its largest element gives $(6, 1)(7, 2)(4, 3)(5)$. Ordering cycles based on the increasing order of the largest elements $(4, 3)(5)(6, 1)(7, 2)$. 

Define $f(\pi)$ by removing the parenthesis in last expression. So $f(\pi) = \begin{matrix}4 & 3 & 5 & 6 & 1 & 7 & 2\end{matrix}$. 

This map $f$ is a bijection from $S_n$ to itself. Since to invert $f$ put parenthesis where the left to right records start and end. 

$$
\begin{matrix}4 & 3& 5& 6&1&7&2 \end{matrix} \rightarrow^{f^{-1}} (4,3)(5)(6, 1)(7, 2)
$$

## Applications

1. (Sports). Observe that

$$
c(\pi) = \text{number of left to right records of }f(\pi)
$$

Thus, average number of left to right records of a random $\pi \in S_n$ is equal to the average value of $c(\pi)$. We computed this to be $\frac{1}{1} + \frac{1}{2} + … + \frac{1}{n}$. 

2. (Theorem) Let $i, j$ be two different elements of $\{1, ..., n\}$ where $n\geq 2$. Then the probability $P(i, j\text{ are in the same cycle of a random } \pi \in S_n) = \frac{1}{2}$. 

_Proof_

By symmetry, take $i=n-1$ and $j = n$. Observe: 

* $n-1$ and $n$ are in different cycles of $\pi$ if and only if, $n$ occurs after $n-1$ in $f(\pi)$.

Example:

$$
(4, 3)(5)(6, 1)(7,2) \rightarrow^f \begin{matrix}4&3&5&6&1&7&2\end{matrix}
$$

If $\pi$ is a random permutation, then so it $f(\pi)$. So 

$$
P(\text{$n$ occurs after $n-1$ in $f(\pi)$}) = \frac{1}{2}
$$


