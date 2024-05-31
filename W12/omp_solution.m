% Define the problem parameters
n = 10;
D = zeros(n, n);
for i = 1:n
    for j = 1:n
        D(i, j) = sin(i + j);
    end
end
I = eye(n);
A = D + I;
b = [-2; -6; -9; 1; 8; 10; 1; -9; -4; -3];
S = 3;

% Normalize the columns of A
A = normc(A);

% Call the OMP function to solve the problem
x_star = omp(A, b, S);

% Find the indices of the non-zero elements in the solution
non_zero_indices = find(x_star ~= 0);

% Sum of the indices of the used columns
sum_indices = sum(non_zero_indices);

% Display the result
disp('Solution x*:')
disp(x_star)
disp('Sum of indices of the used columns:')
disp(sum_indices)
