function [ EX ] = MG1( lambda, mean, variance )
%MG1 calculates the traffic intensity and mean equilibrium queue size
%   for the M/G/1 model of queues

% traffic intensity rho
rho = lambda * mean;

if rho < 1
    % equilibrium queue size exists
    % calculate mean with Pollaczek's formula
    EX = (rho - 0.5 * rho^2 + 0.5 * lambda^2 * variance) / (1 - rho);
    
    fprintf('Mean equilibrium queue size = %.4f\n', EX);
    fprintf('Rho = %.4f\n', rho);
else
    fprintf('Equilibrium queue size distribution does not exist\n');
end


end

