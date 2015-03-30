function [ output_args ] = EpidemicSummary( Beta, y, com )
%EPIDEMICSUMMARY Prints all epidemic related info
%   Beta    = rate of the Poisson process (contact rate)
%   y       = number of individuals of a certain type
%   com     = community of size n + 1

n = com - 1;
% get all Beta_y
Beta_ys =   ones(1, n - y);
% Beta_y = Beta_ys(y)
for i=1:n-y
    Beta_ys(i) = EpidemicRate( Beta, y - 1 + i, n );
end
Beta_ys
%expected time until everyone is infected
E_W = sum(Beta_ys.^-1)

%variance of time until everyone is infected
V_W = sum(Beta_ys.^-2)

%standard deviation
sqrt(V_W)

end

