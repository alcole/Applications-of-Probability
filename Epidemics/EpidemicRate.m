function [ Beta_y ] = EpidemicRate( Beta, y, n )
%EPIDEMICRATE Calculates the epidemic rate Beta_y
%   Beta    = rate of the Poisson process
%   y       = number of individuals of a certain type
%   n       = community size
%   x       = no of individuals of the other type

n = n - 1;

x = n + 1 - y;
Beta_y = (Beta * y * x) / n;
end

