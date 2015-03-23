function [ current ] = Survivors( x0, y0, rho )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

% iteration parameters
current = 0;
last= 0;
iter_max = 100;

last = 0;
current = x0 * exp( (last - (x0 + y0))/ rho );

while abs(current - last) > 0.001
   last = current;
   current = x0 * exp( (last - (x0 + y0))/ rho );
end

end

