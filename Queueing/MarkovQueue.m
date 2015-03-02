function [ px, pxplus ] = MarkovQueue( lambda, epsilon, n )
%MarkovQueue Calculations for the M/M/n queue type
%   lambda is the average arrival rate (independent arrivals)
%   epsilon is the service time
%   n is the number of servers
%   assumes a central queue
%

%   calculate the traffic intensity of the queue, rho
rho = lambda / (n * epsilon);
if rho >= 1
    fprintf('Equilibrium queue size distribution does not exist\n');
else
    fprintf('Calculating pmf of equilibrium queue size distribution\n');
end

if n == 1
    fprintf('Mean equilibrium queue size = %.4f\n', rho/(1-rho));
end
% store the distribution values for less than no of servers
px = ones(1,n);

% store some distribution values for further calculations
pxplus = ones(1,n);

K = 1;

if n > 1
   i = 1;
   while (i < n)
      K =  K + ((n * rho)^i)/factorial(i);
      i = i + 1;
   end
   K = K + ((n * rho)^n)/(factorial(n)*(1 - rho));
end

% rem no default zero based index in MATLAB
for i = 1:n 
   px(i) = (1 / K) * (n^(i - 1) / factorial(i - 1)) * rho^(i - 1);
end

for i = 1:2*n 
   pxplus(i) = (1 / K) * ((n)^(n) / factorial(n)) * rho^(i + n - 1);
end

fprintf('Traffic intensity = %.4f\n', rho);

fprintf('Idol time = %.4f\n', px(1));

fprintf('Probability customer receives immediate service = %.4f\n', ...
        sum(px));

fprintf('Probability all servers busy and queue size one = %.4f\n', ...
         pxplus(2));
    
    pxplus
end

