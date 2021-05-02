function[output] = average_p(in)

skill= (3/4)*randn(1)+4.5;
lost=randi([5,10],1);
winval=randi([10,15],1);

output=[skill,winval,lost];
end

