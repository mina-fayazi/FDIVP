# Question 1
Check all the problem(s) that admit sparse solution(s):

**[X]** $\min\limits_{x}\lVert x \rVert_{1}$ ​​subject to $Ax=b$  
**[X]** $\min\limits_{x}\lVert x \rVert_{0}$​ ​subject to $Ax=b$  
**[X]** $\min\limits_{x}\lVert x \rVert_{p​​}$ subject to $Ax=b$ ($p$ is between 0 and 1)  
**[-]** $\min\limits_{x}\lVert x \rVert_{2}$ ​​subject to $Ax=b$  


# Question 2
Natural image patches (unlike random noise) cannot be sparsely represented over a DCT dictionary.

**[X]** False  
**[-]** True  


# Question 3
In video surveillance applications, background is modeled as a ______ matrix and moving parts are modeled via a  ______ matrix.   

**[-]** sparse, low-rank  
**[-]** sparse, sparse  
**[-]** low-rank, low-rank  
**[X]** low-rank, sparse  


# Question 4
Which one of the greedy algorithms discussed in class is designed to solve the following problem?  
$\min\limits_{A,X}\lVert AX−B \rVert_{F}$  subject to  $\lVert X(:,i) \rVert_{0} \leq k\:\forall i$

**[-]** Matching Pursuit  
**[X]** Method of Optimal Directions  
**[-]** This problem has a closed form solution and hence doesn't need to be solved in a greedy fashion.  
**[-]** Orthogonal Matching Pursuit  


# Question 5
Check all the norms that are convex functions.

**[X]** The $L1$ norm ($f(x)=\lVert x \rVert_{1}$)  
**[-]** The $Lp$ norm ($f(x)=\lVert x \rVert_{p}​$ where $p$ is between 0 and 1.  
**[X]** The $L2$ norm ($f(x)=\lVert x \rVert_{2}​$)  
**[-]** The $L0$ norm ($f(x)=\lVert x \rVert_{0}$)  


# Question 6
Which one of the following statements is true regarding the basis pursuit problem given by $x^{\ast} = argmin_{x}\lVert x \rVert_{1}$ subject to $Ax=b$?

**[-]** If one of the columns in $A$ is identical to $b \neq 0$, then $\lVert x^{\ast} \rVert_{1} = 1$.  
**[-]** If $b=0$ and $A$ is full rank, then the problem has no solution since the constraint set becomes empty.  
**[-]** $x^{\ast}$ also minimizes the corresponding LASSO problem given by $\min\limits_{x}\lVert Ax−b \rVert_{2}^{2} + \lambda \lVert x \rVert_{1}$​.  
**[X]** none of the above.  


# Question 7
The singular value decomposition of the $n \times n$ square matrix $A$ is given by $A=U \Sigma V^T$. Check all correct statements.

**[-]** The nuclear norm of $A$ (given by the sum of absolute values of entries on the diagonal of $\Sigma$) is an upper bound on the rank of $A$.  
**[X]** Matrices $U$ and $V$ are orthonormal bases for the nn-dimensional space.  
**[X]** If $\Sigma$ has only one non-zero entry, then $A$ is definitely a rank-1 matrix.  
**[-]** Only square matrices (such as $A$) have singular value decomposition.  


# Question 8
In this MATLAB assignment you will code-up the orthogonal matching pursuit (OMP) algorithm, as discussed in the lecture, to solve the following optimization problem:
$\min\limits_{x}\lVert Ax−b \rVert_{2}$ subject to $\lVert x \rVert_{0} \le S$

In this exercise $A=D+I$, where $D_{ij}=sin(i+j)$ for $1 \le i$, $j \le 10$ and $I$ is the $10 \times 10$ identity matrix. Use $A$ along with $b=[−2,−6,−9,1,8,10,1,−9,−4,−3]^T$, and $S=3$ to find the solution to the problem given above. 

Your solution $x^{\ast}$ uses three columns of $A$ in order to approximate $b$. Type in the sum of the indices of these three columns. For example, if you find that your solution uses the first, third, and fifth columns of $A$ then you must enter 9. (Hint: $normc(A)$ normalizes the columns of $A$ to a length of 1 in MATLAB.)

**[16]**  
