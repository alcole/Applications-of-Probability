function [ W ] = Duration( Beta, y0, n )
%DURATION Caluclates the duration of an epidemic
%   W = the waiting time until all the susceptibles are infected
%   W = T_y0 + T_y0+1 + \ldots + T_n

W = 0;

for i=y0:n-1
    wn = ( 1/ EpidemicRate(Beta, i, n-1));
    W = W + wn;
    i = i + 1;
end

end

