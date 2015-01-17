function [EXn, VXn ] = SimpleRandomWalk( n, p  )
%SIMPLERANDOMWALK Summary of this function goes here
%   Detailed explanation goes here
%   p + q = 1
%   n the number of steps

q = 1 - p;

% The mean of the particle's position after n steps
EXn = n * (p - q);
% The variance of the particle's position after n steps
VXn = 4 * n * p * q;

end

