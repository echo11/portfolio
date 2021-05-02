function [skill,winval, lostval] = averageplayer( )


skill=(3/4)*randn(1)+4.5;
%histogram(skill)
winval=randi([5,10]);
lostval=randi([10,15]);


end 
