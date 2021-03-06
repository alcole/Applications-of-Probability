function [ Beta_y ] = EpidemicRate( Beta, y, com )
%EPIDEMICRATE Calculates the epidemic rate Beta_y
%   Beta    = rate of the Poisson process
%   y       = number of individuals of a certain type
%   com       = community size
%   x       = no of individuals of the other type

n = com - 1;

x = n + 1 - y;

Beta_y = (Beta * y * x) / n;

end

