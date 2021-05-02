avgskilla1(10000) = 0;
avgskilla2(10000) = 0;
avgskillp1(10000) = 0;
avgskillp2(10000) = 0;
avgskillc1(10000) = 0;
avgskillc2(10000) = 0;


for i=1:10000
    [avgskilla1(i),wa,la]=averageplayer() ;
    [avgskillp1(i),wp,lp]=puzzlerplayer();
    [avgskillc1(i),wc,lc]=connoisseurplayer();
    
    avgskilla2(i)=round(avgskilla1(i));
    avgskillp2(i)=round(avgskillp1(i));
    avgskillc2(i)=round(avgskillc1(i));

end 
subplot(4,2,1)
histogram(avgskilla1)
subplot(4,2,2)
histogram(avgskilla2)
subplot(4,2,3)
histogram(avgskillp1)
subplot(4,2,4)
histogram(avgskillp2)
subplot(4,2,5)
histogram(avgskillc1)
subplot(4,2,6)
histogram(avgskillc2)
subplot(4,2,7.5)
histogram(avgskilla1)
hold on
histogram(avgskilla1)
histogram(avgskilla2)
histogram(avgskillp1)
histogram(avgskillp2)
histogram(avgskillc1)
histogram(avgskillc2)


