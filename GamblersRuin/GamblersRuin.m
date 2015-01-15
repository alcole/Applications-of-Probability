function [ ] = GamblersRuinSummary( a, j, p )
%GAMBLERSRUIN Summary 
% Gamblers ruin in the style of a simple random walk, where p + q = 1
%  a - The Gambler and opponent have £a between them
%      If the opponent has unlimited resources set a to Inf
%  j - The Gambler begins with £j
%  p - The probability the Gambler wins a round of the game
%  q - The probability the Gambler looses a round of the game = 1 - p

qj = 0; % Probability the Gambler is ruined
Dj = 0; % Expected duration of the game

qj = GamblersRuinProb( a, j, p);
Dj = GamblersRuinDuration( a, j, p);

fprintf('The probability the Gambler looses is %f\n', qj);
if Dj == -1
    fprintf('There is no expected duration of the game\n');
else
    fprintf('The expected duration of the game is %.2f rounds\n ', Dj);
end 

end

