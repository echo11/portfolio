function [skill,winval, lostval] = puzzlerplayer( )

skill=(3/4)*randn(1)+7.5;
%histogram(skill)
winval=randi([10,15]);
lostval=randi([20,25]);


end 