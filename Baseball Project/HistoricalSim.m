function HistoricalSim(handles)

HomeTeamString=handles.TeamDropdownH.String;
HomeIndex=handles.TeamDropdownH.Value;
HomeTeam=HomeTeamString{HomeIndex};

AwayTeamString=handles.TeamDropdownA.String;
AwayIndex=handles.TeamDropdownA.Value;
AwayTeam=HomeTeamString{AwayIndex};

[numbersOnly,txtOnly,raw] = xlsread('FormattedWinsData.xlsx','A1:C30');
for i=1:length(raw)
    Historical(i).Home=txtOnly{i,1};
    Historical(i).Away=txtOnly{i,2};
    Historical(i).Record=numbersOnly(i);
end

if strcmp(HomeTeam,AwayTeam)
    HistoricalPercentageH=0.5;
else
    for i=1:length(raw)
        if strcmp(HomeTeam, Historical(i).Home)
            if strcmp(AwayTeam, Historical(i).Away)
                HistoricalPercentageH=Historical(i).Record;
            end
        end
    end
end

NumberOfGames=str2double(handles.NumberOfGames.String);
HomeWins=NumberOfGames*HistoricalPercentageH;
WholeNumberHomeWins=round(HomeWins,0);
WholeNumberAwayWins=NumberOfGames-WholeNumberHomeWins;

handles.HomeWinsH.String=num2str(WholeNumberHomeWins);
handles.AwayWinsH.String=num2str(WholeNumberAwayWins);