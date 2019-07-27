function [outcome,result]=HittingFunctionOBA(OBA,PitchersOBA,SluggingPercentage)
% function takes input Batting Average, PitchersOBA, and WalkPercentage
% and calculates the outcome of a single at bat.

TrueBA=(OBA+PitchersOBA)/2; % decimal
%disp(['The TrueBA is: ',num2str(TrueBA)]);

WholeNumberBA=TrueBA*1000; % whole number between 1-1000
%disp(['The WholeNumberBA is: ',num2str(WholeNumberBA)]);

WholeNumberSLG=SluggingPercentage*1000; % whole number between 1-1000
%disp(['The WholeNumberSLG is: ',num2str(WholeNumberSLG)]);

rng('shuffle'); % shuffles random number generator
RandomOutcome=randi(1000); % random number between 1-1000
%disp(['The Random Outcome is: ',num2str(RandomOutcome)]);

if RandomOutcome <= WholeNumberBA 
   RandomOutcome=randi(WholeNumberSLG+200);
   %disp(['Second Random Outcome is: ',num2str(RandomOutcome)]);
   if RandomOutcome <= WholeNumberSLG/7
       outcome='hit';
       result='yabo';
   elseif RandomOutcome > WholeNumberSLG/7 && RandomOutcome <= WholeNumberSLG/5
       outcome='hit';
       result='triple';
   elseif RandomOutcome > WholeNumberSLG/5 && RandomOutcome <= WholeNumberSLG/2
       outcome='hit';
       result='double';
   elseif RandomOutcome > WholeNumberSLG/2 && RandomOutcome <= WholeNumberSLG
       outcome='hit';
       result='single';
   elseif RandomOutcome > WholeNumberSLG
       outcome='walk';
       result='walk';
   end
elseif (RandomOutcome > WholeNumberBA)
    outcome='out';
    result='out';
end

% Breakdown of number logic:
% 1-x hit (Multiply BA by 1000)
% x-y walk (Multiply Walk % by 1000 and add to BA number)
% y-1000 out (Anything bigger than their walk %)