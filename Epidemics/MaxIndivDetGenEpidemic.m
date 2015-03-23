function [ y_max ] = MaxIndivDetGenEpidemic( pop, y0, Beta, gamma )
%MAXINDIVDETGENEPIDEMIC Returns the maximum number of individuals that are
%simultaneously infectious
%   pop     = size of population / community
%   x0      = initial number of susceptibles
%   y0      = initial number of infectives
%   n       = total number of individuals (x0 + y0) - 1
%   Beta    = contact rate
%   gamma   = removal rate
%   rho     = (n * gamma) / Beta the epidemic parameter

% calculate n
n = pop - 1;

%calculate x0
x0 = pop - y0;

% calculate the epidemic parameter
rho = (n * gamma) / Beta

y_max = y0;

if x0 > rho
    y_max = y0 + x0 - rho - rho * log(x0/rho);
end

end
