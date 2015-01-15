function [ Dj ] = GamblersRuinDuration( a, j, p )
% calculate the expected duration of the game
% Gamblers ruin in the style of a simple random walk, where p + q = 1
%  a - The Gambler and opponent have £a between them
%      If the opponent has unlimited resources set a to Inf
%  j - The Gambler begins with £j
%  p - The probability the Gambler wins a round of the game
%  q - The probability the Gambler looses a round of the game = 1 - p
%  qj - The probability the Gambler is ruined

q = 1 - p;
Dj = 0; % Expected duration of the game

if a == Inf
% the case where the opponent has infinte resources
    if p == 0.5
        Dj = Inf;
    elseif p < 0.5
        Dj = j / (q - p);
    else 
        Dj = -1; % No expected probability
    end
else
    if p == 0.5
       Dj = j * (a - j);
    else
        Dj = j / (q - p) - ( a / (q - p) ) * ((1 - (q/p)^j)/(1 - (q/p)^a));
    end
end
end

