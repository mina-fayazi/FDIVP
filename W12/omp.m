function x = omp(A, b, S)
    % Orthogonal Matching Pursuit (OMP) algorithm
    % A - the dictionary matrix
    % b - the observation vector
    % S - the sparsity level

    % Initialize variables
    [~, n] = size(A);
    x = zeros(n, 1);
    r = b; % residual
    omega = []; % set of selected indices

    for s = 1:S
        % Find the index of the column that is most correlated with the residual
        correlations = abs(A' * r);
        [~, new_index] = max(correlations);
        
        % Add the new index to the set of selected indices
        omega = [omega, new_index];

        % Solve the least squares problem for the selected columns
        A_omega = A(:, omega);
        x_omega = A_omega \ b;

        % Update the solution
        x(omega) = x_omega;

        % Update the residual
        r = b - A * x;
    end
end
