function [ ] = GamblersRuin( a, j, p, n )
%GAMBLERSRUIN Summary 
% Gamblers ruin in the style of a simple random walk, where p + q = 1
%  a - The Gambler and opponent have £a between them
%      If the opponent has unlimited resources set a to Inf
%  j - The Gambler begins with £j
%  p - The probability the Gambler wins a round of the game
%  n - (Optional) the number of steps 
%  q - (calculated)The probability the Gambler looses a round of the game = 1 - p
q = 1 - p;

% Probability the Gambler is ruined
qj = GamblersRuinProb( a, j, p); 

% Expected duration of the game
Dj = GamblersRuinDuration( a, j, p);

% print summary
fprintf('The probability the Gambler looses is %f\n', qj);
if Dj < 0
    fprintf('There is no expected duration of the game\n');
else
    fprintf('The expected duration of the game is %.2f rounds\n ', Dj);
end 
fprintf('\n');

%calculate mean and variance if number of steps supplied


if nargin == 4
    [EXn, VXn] = SimpleRandomWalk( n, p  );
    fprintf('E(X_n) = %.4f\n', EXn);
    fprintf('V(X_n) = %.4f\n', VXn);
end

end

