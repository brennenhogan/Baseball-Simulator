% Calls all other functions
clear all;
clc;

HomeTeam = 'Mariners';
AwayTeam = 'Astros';

TeamData1=loadData(HomeTeam);
TeamPitcherData1=loadPitcherData(HomeTeam);
TeamData2=loadData(AwayTeam);
TeamPitcherData2=loadPitcherData(AwayTeam);

ScoreHome=0;
ScoreAway=0;
Inning=1;
HalfInning=0; %0 cooresponds to the top half of the inning, 1 to the bottom
NewInning=1;
HomeBatter=1;
AwayBatter=1;
while Inning<=9 || ScoreHome==ScoreAway %While the game is below nine innings or the score is not tied...
    if NewInning==1 %At the start of each inning reset the outs and runners
        Outs=0;
        Runner1=0;
        Runner2=0;
        Runner3=0;
        NewInning=0;
        disp(['It is the ',num2str(Inning),' inning'])
        disp(' ');
    end
    while Outs<3 %While the outs are below 3, run the inning logic
        
        if HalfInning==0
            Batter=AwayBatter;
            TeamData=TeamData2;
            PitchersOBA=TeamPitcherData1(1).OBA; % Home Pitcher
        elseif HalfInning==1
            Batter=HomeBatter;
            TeamData=TeamData1;
            PitchersOBA=TeamPitcherData2(1).OBA; % Away Pitcher
        end
        
        BattingAverage=TeamData(Batter).BA;
        OBP=TeamData(Batter).OBP;
        WalkPercentage=OBP-BattingAverage;
        SluggingPercentage=TeamData(Batter).SLG;
        disp(['The Current Batter Is: ', TeamData(Batter).Name{1},' and is playing: ',TeamData(Batter).Position{1}]);
        
        [HittingOutcome,HittingResult]=HittingFunction(BattingAverage,PitchersOBA, WalkPercentage, SluggingPercentage);
        %Hitting function is called upon based on the players
        disp(['The outcome is: ', HittingOutcome,' The result is: ', HittingResult]);
        switch HittingOutcome
            case 'out' %If the outcome is out, then the out counter increases
                Outs=Outs+1;
            case 'walk' %If the outcome is walk, then the baserunners advance
                [Runner1,Runner2,Runner3,ScoreHome,ScoreAway]=BaserunningFunction(HittingResult,Runner1,Runner2,Runner3,ScoreHome,ScoreAway,HalfInning);
                %Since there is no scoreboard function, the function
                %returns the positions of the runners and the display runs
                %scored whenever a run does score
            case 'hit' %If the case is hit, examines HittingResult
                [Runner1,Runner2,Runner3,ScoreHome,ScoreAway]=BaserunningFunction(HittingResult,Runner1,Runner2,Runner3,ScoreHome,ScoreAway,HalfInning);
                %Since there is no scoreboard function, the function
                %returns the positions of the runners and the display runs
                %scored whenever a run does score
        end
        if HalfInning==1
            HomeBatter=HomeBatter+1;
            if HomeBatter > 9
                HomeBatter=1;
            end
        elseif HalfInning==0
            AwayBatter=AwayBatter+1;
            if AwayBatter > 9
                AwayBatter=1;
            end
        end
    end
    disp(' ')
    disp(['Switch Sides',' Home Score: ',num2str(ScoreHome),' Away Score: ',num2str(ScoreAway)]);
    NewInning=1;
    switch HalfInning
        case 0 %If it is the top half of the inning, go to the bottom
            HalfInning=1;
            disp('Home team now batting');
        case 1 %If it is the bottom half of the inning, go to the top and incriment the inning
            HalfInning=0;
            Inning=Inning+1;
    end
end
disp('');
disp('');
if ScoreHome > ScoreAway
   disp(['The ',HomeTeam ,' Won ',num2str(ScoreHome),' to ', num2str(ScoreAway),' and ', TeamPitcherData1(1).Name{1},' pitched.']) 
elseif ScoreAway > ScoreHome
   disp(['The ',AwayTeam, ' Won ',num2str(ScoreAway),' to ', num2str(ScoreHome),' and ', TeamPitcherData2(1).Name{1},' pitched.'])   
end