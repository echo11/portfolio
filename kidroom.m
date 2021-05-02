function [earningsum,dearn,wins]= kidroom(dif)
    player1(3) =0;
    player2(3)=0;
    player3(3)=0;
    player4(3)=0;
    player5(3)=0;
    player6(3)=0;
    player7(3)=0;
    player8(3)=0;

moneysum=0;
dif=40;
runs=fix(270/40);
wins(30)=0;
earningsum(30)=0;
dearn(30)=0;
    
for i=1:30
    %loop to run the room each day
dmoney=0;
dailywins=0;
for j=1:runs
    %loop to run the room the number of times it runs in a day 
    skillsum=0;
    
    % CANGE THE NAMES PLEASE 5 average, 3 puzzlier

    player1 = average_p(j);
    player2 = average_p(j);
    player3 = average_p(j);
    player4 = average_p(j);
    player5 = average_p(j);
    player6 = puzzler_p(j);
    player7 = puzzler_p(j);
    player8 = puzzler_p(j);
    
    %sets the skill to a numerical value instead of the array and rounds
    skill1= round(player1(1));
    skill2= round(player2(1));
    skill3= round(player3(1));
    skill4= round(player4(1));
    skill5= round(player5(1));
    skill6= round(player6(1));
    skill7= round(player7(1));
    skill8= round(player8(1));
    
    wmoney1=player1(2);
    wmoney2=player2(2);
    wmoney3=player3(2);
    wmoney4=player4(2);
    wmoney5=player5(2);
    wmoney6=player6(2);
    wmoney7=player7(2);
    wmoney8=player8(2);
    
    lmoney1=player1(3);
    lmoney2=player2(3);
    lmoney3=player3(3);
    lmoney4=player4(3);
    lmoney5=player5(3);
    lmoney6=player6(3);
    lmoney7=player7(3);
    lmoney8=player8(3);
    
    
    
    %total skill sum of the run 
    skillsum = skill1+skill2+skill3+skill4+skill5+skill6+skill7+skill8;
   
    %logic for wins and losses
    if skillsum >= dif
        % this is the wins and it adds the number of wins together
        dailywins= dailywins+1;
        %logic for if the average pays more
        if skillsum>=(dif+10)
            moneysum= moneysum+25+wmoney1+wmoney2+wmoney3+wmoney4+wmoney5;
            dmoney=dmoney+25+wmoney1+wmoney2+wmoney3+wmoney4+wmoney5;
            %logic for if the puzzler player pays less
            if skillsum>=(dif+15)
                moneysum=moneysum+10+10;
                dmoney=dmoney+10+10;
            else 
                %statement for if the skill is less than or equal to 15
                %more
            moneysum = moneysum+wmoney6+wmoney7+wmoney8;
            dmoney=dmoney+wmoney6+wmoney7+wmoney8;
            end
        else
             %math for if all the players pay according to the distrobution
         moneysum= moneysum+wmoney1+wmoney2+wmoney3+wmoney4+wmoney5+wmoney6+wmoney7+wmoney8;
        dmoney=dmoney+wmoney1+wmoney2+wmoney3+wmoney4+wmoney5+wmoney6+wmoney7+wmoney8;
        end
    end
    %logic for how much money is paid if they loose
    if skillsum< dif
        moneysum = moneysum+lmoney1+lmoney2+lmoney3+lmoney4+lmoney5+lmoney6+lmoney7+lmoney8;
        dmoney=dmoney+lmoney1+lmoney2+lmoney3+lmoney4+lmoney5+lmoney6+lmoney7+lmoney8;
    end
end

%stores the percent of wins per day and the money earned per day as a 1x30
%array 
earningsum(i)=moneysum;
wins(i)= (dailywins/runs)*100;
dearn(i)=dmoney;
end