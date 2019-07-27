function [outcome,result]=HittingFunction(BattingAverage,PitchersOBA, WalkPercentage, SluggingPercentage)
% function takes input Batting Average, PitchersOBA, and WalkPercentage
% and calculates the outcome of a single at bat.

TrueBA=(BattingAverage+PitchersOBA)/2; % decimal
%disp(['The TrueBA is: ',num2str(TrueBA)]);

WholeNumberBA=TrueBA*1000; % whole number between 1-1000
%disp(['The WholeNumberBA is: ',num2str(WholeNumberBA)]);

WholeNumberOBP=WalkPercentage*1000; % whole number between 1-1000
WalkSection=WholeNumberOBP+WholeNumberBA; % creates Walk Percentage section
%disp(['The WalkSection is: ',num2str(WalkSection)]);

WholeNumberSLG=SluggingPercentage*1000; % whole number between 1-1000
%disp(['The WholeNumberSLG is: ',num2str(WholeNumberSLG)]);

rng('shuffle'); % shuffles random number generator
RandomOutcome=randi(1000); % random number between 1-1000
%disp(['The Random Outcome is: ',num2str(RandomOutcome)]);

if RandomOutcome <= WholeNumberBA 
   outcome='hit';
   RandomOutcome=randi(1000);
   %disp(['Second Random Outcome is: ',num2str(RandomOutcome)]);
   if RandomOutcome <= WholeNumberSLG/7
       result='yabo';
   elseif RandomOutcome > WholeNumberSLG/7 && RandomOutcome <= WholeNumberSLG/4
       result='triple';
   elseif RandomOutcome > WholeNumberSLG/4 && RandomOutcome <= WholeNumberSLG/1
       result='double';
   elseif RandomOutcome > WholeNumberSLG/1 && RandomOutcome
       result='single';
   end
elseif (RandomOutcome > WholeNumberBA ) && (RandomOutcome <= WalkSection)
   outcome='walk';
   result='walk';
elseif (RandomOutcome > WalkSection)
    outcome='out';
    result='out';
end

% Breakdown of number logic:
% 1-x hit (Multiply BA by 1000)
% x-y walk (Multiply Walk % by 1000 and add to BA number)
% y-1000 out (Anything bigger than their walk %)