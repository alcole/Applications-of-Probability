function [ sigma ] = DurationSD( Beta, y0, n )
%DURATIONSD Uses the Duration function to calc the sd
%   Detailed explanation goes here

[E, V] = Duration( Beta, y0, n );
sigma = sqrt(V);

end

