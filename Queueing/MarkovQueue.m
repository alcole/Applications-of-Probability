function [ output_args ] = MarkovQueue( lambda, epsilon, n )
%MarkovQueue Calculations for the M/M/n queue type
%   lambda is the average arrival rate (independent arrivals)
%   epsilon is the service time
%   n is the number of servers
%   assumes a central queue

%   calculate the traffic intensity of the queue, rho
rho = lambda / (n * epsilon);
if rho >= 1
    fprintf('Equilibrium queue size distribution does not exist\n');
else
    fprintf('Calculating pmf of equilibrium queue size distribution\n');
end

K = 1 + n * rho;

if n > 2
   i = 2;
   while i < n
      K =  K + ((n * rho)^i)/factorial(i);
   end
   K = K + ((n * rho)^n)/(factorial(n)*(1 - rho));
end
    
end

