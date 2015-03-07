function [ ET_y, VT_y ] = WaitingTimesParams( Beta_y )
% WAITINGTIMESPARAMS calulates mean and variance
%   stochastic version of simple epidemic model
%   y infectives
%   T_y time until next infection
%   has exponential distribution with parameter Beta_y

ET_y = 1 / Beta_y;
VT_y = 1 / Beta_y^2;

end

