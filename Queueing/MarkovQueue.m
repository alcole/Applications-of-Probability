function [ px, pxplus ] = MarkovQueue( lambda, epsilon, n, verbose )
%MarkovQueue Calculations for the M/M/n queue type
%   lambda is the average arrival rate (independent arrivals)
%   epsilon is the service time
%   n is the number of servers
%   if verbose supplied as false then return arrays else print out
%   assumes a central queue
%

%   calculate the traffic intensity of the queue, rho
rho = lambda / (n * epsilon);
if rho >= 1
    fprintf('Equilibrium queue size distribution does not exist\n');
else
    fprintf('Calculating pmf of equilibrium queue size distribution\n');
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

for i = 1:n 
   pxplus(i) = (1 / K) * ((i - 1)^(i - 1) / factorial(n)) * rho^(i - 1);
end

if nargin == 3 || verbose ~= false 
    fprintf('Idol time = %.4f\n', px(1));
end

end

