function [ W, VW ] = Duration( Beta, y0, n )
%DURATION Caluclates the duration of an epidemic
%   W = the waiting time until all the susceptibles are infected
%   W = T_y0 + T_y0+1 + \ldots + T_n
%   WV = Variance of the expected waiting time

W = 0;
VW = 0;

for i=y0:n-1
    [E, V] = ( WaitingTimesParams(EpidemicRate(Beta, i, n-1)));
    W = W + E;
    VW = VW + V;
    i = i + 1;
end

end

