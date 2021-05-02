[moneyk,dayk,wink]=kidroom();
[moneyh,dayh,winh]=hardroom();
[moneys,days,wins]=space();
x= 1:0.01:30 ;
for i=1:30
timearray(i)=i;
end
Day_Kid=dayk.' ;
Win_Kid=wink.' ;
Day_Hard=dayh.' ;
Win_Hard=winh.' ;
Day_Space=days.' ;
Win_Space=wins.' ;

T =table(Day_Kid, Win_Kid, Day_Hard, Win_Hard, Day_Space, Win_Space);
T(1:30,:)

kco=polyfit( timearray, moneyk,1);
hco=polyfit( timearray,moneyh,1);
sco=polyfit( timearray,moneys,1);

yk=polyval(kco,x);
yh=polyval(hco,x);
ys=polyval(sco,x);

subplot(2,3,1)
plot(x,yk)
subplot(2,3,3)
plot(x,ys)
subplot(2,3,2)
plot(x,ys)

subplot(2,3,4)
scatter(wink,dayk, 'r' , 'd')
subplot(2,3,6)
scatter(winh,dayh, 'g' , 'd')
subplot(2,3,5)
scatter(wins,days, 'b' , 'd')


