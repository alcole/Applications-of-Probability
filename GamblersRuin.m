function [ qj ] = GamblersRuin( a, j, p )
%GAMBLERSRUIN Summary of this function goes here
% Gamblers ruin in the style of a simple random walk, where p + q = 1
%  a - The Gambler and opponent have £a between them
%      If the opponent has unlimited resources set a to Inf
%  j - The Gambler begins with £j
%  p - The probability the Gambler wins a round of the game
%  q - The probability the Gambler looses a round of the game = 1 - p

q = 1 - p;
qj = 0; % Probability the Gambler is ruined
Dj = 0; % Expected duration of the game

% the case where the opponent has infinte resources
if a == Inf
% Calculate the probability the Gambler is ruined pj
    if p > q
        qj = (q / p)^j;
    else
        qj = 1;
    end
% The expected duration of the match is Dj
    if p == 0.5
        Dj = Inf;
    elseif p < 0.5
        Dj = j / (q - p);
    else 
        Dj = -1;
    end
    
% the case with fintite resources   
else
% Calculate the probability the Gambler is ruined pj
    if p == 0.5
        qj = 1 - j / a;
    else 
        qj = ((q/p)^j - (q/p)^a) / (1 - (q/p)^a);
    end

% The expected duration of the match is Dj

    if p == 0.5
       Dj = j * (a - j);
    else
        Dj = j / (q - p) - ( a / (q - p) ) * ((1 - (q/p)^j)/(1 - (q/p)^a));
    end
end

fprintf('The probability the Gambler looses is %f\n', qj);
fprintf('The expected duration of the game is %.2f rounds\n ', Dj);
end

