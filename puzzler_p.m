function[output]= puzzler_p(in)

skill= (3/4)*randn(1)+7.5;
lostpay=randi([10,15],1);
winpay=randi([20,25],1);

output=[skill,winpay,lostpay];
end

