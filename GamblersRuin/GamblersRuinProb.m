function [ qj] = GamblersRuinProb(  a, j, p )
% calculate the probability the Gambler is ruined
% Gamblers ruin in the style of a simple random walk, where p + q = 1
%  a - The Gambler and opponent have £a between them
%      If the opponent has unlimited resources set a to Inf
%  j - The Gambler begins with £j
%  p - The probability the Gambler wins a round of the game
%  q - The probability the Gambler looses a round of the game = 1 - p
%  qj - The probability the Gambler is ruined


q = 1 - p;
qj = 0; % Probability the Gambler is ruined


% Calculate the probability the Gambler is ruined pj
if a == Inf
% the case where the opponent has infinte resources
    if p > q
        qj = (q / p)^j;
    else
        qj = 1;
    end
else
    if p == 0.5
        qj = 1 - j / a;
    else 
        qj = ((q/p)^j - (q/p)^a) / (1 - (q/p)^a);
    end   
end

end

