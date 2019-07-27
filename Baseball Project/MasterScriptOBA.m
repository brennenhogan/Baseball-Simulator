function MasterScriptOBA(handles)
%% lineup check
[HomeLineup,AwayLineup]=OrganizeLineups(handles);

HCOrder=str2double(handles.COrderH.String);
HFirstOrder=str2double(handles.FirstOrderH.String);
HSecondOrder=str2double(handles.SecondOrderH.String);
HThirdOrder=str2double(handles.ThirdOrderH.String);
HShortOrder=str2double(handles.ShortOrderH.String);
HLeftOrder=str2double(handles.LeftOrderH.String);
HCenterOrder=str2double(handles.CenterOrderH.String);
HRightOrder=str2double(handles.RightOrderH.String);
HDHOrder=str2double(handles.DHOrderH.String);
HBattingSum=HCOrder+HFirstOrder+HSecondOrder+HThirdOrder+HShortOrder+HLeftOrder+HCenterOrder+HRightOrder+HDHOrder;

ACOrder=str2double(handles.COrderA.String);
AFirstOrder=str2double(handles.FirstOrderA.String);
ASecondOrder=str2double(handles.SecondOrderA.String);
AThirdOrder=str2double(handles.ThirdOrderA.String);
AShortOrder=str2double(handles.ShortOrderA.String);
ALeftOrder=str2double(handles.LeftOrderA.String);
ACenterOrder=str2double(handles.CenterOrderA.String);
ARightOrder=str2double(handles.RightOrderA.String);
ADHOrder=str2double(handles.DHOrderA.String);
ABattingSum=ACOrder+AFirstOrder+ASecondOrder+AThirdOrder+AShortOrder+ALeftOrder+ACenterOrder+ARightOrder+ADHOrder;

if HBattingSum==45 && ABattingSum==45
    RunGame=1;
else
    RunGame=0;
    disp('Enter with the propor rules of baseball in mind');
end
%% main code
if RunGame==1
    disp('==============================================================================');
    disp('==============================================================================');
    disp(' ');
    disp('wOBA Function');
    disp(' ');
    disp('==============================================================================');
    disp('==============================================================================');
    [HomeTeam,AwayTeam,~,~,~,~]=populateTeams(handles);
    
    NumGames=str2double(handles.NumberOfGames.String);
    
    TeamPitcherData1=loadPitcherData(HomeTeam);
    TeamPitcherData2=loadPitcherData(AwayTeam);
    
    HomeWins=0;
    AwayWins=0;
    PitcherNum=1;
    
    for i=1:1:NumGames
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
            end
            while Outs<3 %While the outs are below 3, run the inning logic
                if HalfInning==0
                    Batter=AwayBatter;
                    TeamData=AwayLineup;
                    PitchersOBA=TeamPitcherData1(PitcherNum).OBA; % Home Pitcher
                elseif HalfInning==1
                    Batter=HomeBatter;
                    TeamData=HomeLineup;
                    PitchersOBA=TeamPitcherData2(PitcherNum).OBA; % Away Pitcher
                end
                
                OBA=TeamData(Batter).OBA;
                SluggingPercentage=TeamData(Batter).SLG;
                
                [HittingOutcome,HittingResult]=HittingFunctionOBA(OBA,PitchersOBA,SluggingPercentage);
                
                %Hitting function is called upon based on the players
                if handles.FeedSelection.Value==1
                    disp(['The Current Batter Is: ', TeamData(Batter).Name{1},' and is playing: ',TeamData(Batter).Position{1},' and the result is: ',HittingOutcome]);
                end
                switch HittingOutcome
                    case 'out' %If the outcome is out, then the out counter increases
                        Outs=Outs+1;
                    case 'walk' %If the outcome is walk, then the baserunners advance
                        [Runner1,Runner2,Runner3,ScoreHome,ScoreAway]=BaserunningFunctionTEST(HittingResult,Runner1,Runner2,Runner3,ScoreHome,ScoreAway,HalfInning);
                        %Since there is no scoreboard function, the function
                        %returns the positions of the runners and the display runs
                        %scored whenever a run does score
                    case 'hit' %If the case is hit, examines HittingResult
                        [Runner1,Runner2,Runner3,ScoreHome,ScoreAway]=BaserunningFunctionTEST(HittingResult,Runner1,Runner2,Runner3,ScoreHome,ScoreAway,HalfInning);
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
            NewInning=1;
            switch HalfInning
                case 0 %If it is the top half of the inning, go to the bottom
                    HalfInning=1;
                    if handles.FeedSelection.Value==1
                        disp(' ');
                        disp(['It is the bottom of inning ',num2str(Inning),' and the score is: ',num2str(ScoreHome),'-',num2str(ScoreAway)]);
                        disp(' ');
                    end
                case 1 %If it is the bottom half of the inning, go to the top and incriment the inning
                    HalfInning=0;
                    Inning=Inning+1;
                    if handles.FeedSelection.Value==1 && Inning ~= 10
                        disp(' ');
                        disp(['It is the top of inning ',num2str(Inning),' and the score is: ',num2str(ScoreHome),'-',num2str(ScoreAway)]);
                        disp(' ');
                    end
            end
        end
        if ScoreHome > ScoreAway
            disp('==============================================================================');
            disp(['The ',HomeTeam ,' Won ',num2str(ScoreHome),' to ', num2str(ScoreAway),' and ', TeamPitcherData1(PitcherNum).Name{1},' pitched.'])
            HomeWins=HomeWins+1;
        elseif ScoreAway > ScoreHome
            disp('==============================================================================');
            disp(['The ',AwayTeam, ' Won ',num2str(ScoreAway),' to ', num2str(ScoreHome),' and ', TeamPitcherData2(PitcherNum).Name{1},' pitched.'])
            AwayWins=AwayWins+1;
        end
        PitcherNum=PitcherNum+1;
        if PitcherNum > 6
            PitcherNum=1;
        end
        disp('==============================================================================');
    end
    
    handles.HomeWinsA.String=num2str(HomeWins);
    handles.AwayWinsA.String=num2str(AwayWins);
end