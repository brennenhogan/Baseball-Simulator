function [HomeTeam,AwayTeam,TeamDataHome,lengthOfHomeTeam,TeamDataAway,lengthOfAwayTeam]=populateTeams(handles)

HomeTeamString=handles.TeamDropdownH.String;
HomeIndex=handles.TeamDropdownH.Value;
HomeTeam=HomeTeamString{HomeIndex};

AwayTeamString=handles.TeamDropdownA.String;
AwayIndex=handles.TeamDropdownA.Value;
AwayTeam=HomeTeamString{AwayIndex};

switch HomeTeam
    case 'Mariners'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedMarinersDataFinal.xlsx','A1:G23');
    case 'Astros'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedAstrosDataFinal.xlsx','A1:G20');
    case 'Athletics'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedAthleticsDataFinal.xlsx','A1:G25');
    case 'Rangers'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedRangersDataFinal.xlsx','A1:G21');
    case 'Orioles'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedOriolesDataFinal.xlsx','A1:G20');
    case 'Angels'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedAngelsDataFinal.xlsx','A1:G22');
end
lengthOfHomeTeam=length(raw);
for i=1:lengthOfHomeTeam
    TeamDataHome(i).order=numbersOnly(i,1);
    TeamDataHome(i).Name=txtOnly(i,2);
    TeamDataHome(i).Position=txtOnly(i,1);
    TeamDataHome(i).BA=numbersOnly(i,4);
    TeamDataHome(i).OBP=numbersOnly(i,5);
    TeamDataHome(i).SLG=numbersOnly(i,6);
    TeamDataHome(i).OBA=numbersOnly(i,7);
end

switch AwayTeam
    case 'Mariners'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedMarinersDataFinal.xlsx','A1:G23');
    case 'Astros'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedAstrosDataFinal.xlsx','A1:G20');
    case 'Athletics'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedAthleticsDataFinal.xlsx','A1:G25');
    case 'Rangers'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedRangersDataFinal.xlsx','A1:G21');
    case 'Orioles'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedOriolesDataFinal.xlsx','A1:G20');
    case 'Angels'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedAngelsDataFinal.xlsx','A1:G22');
end
lengthOfAwayTeam=length(raw);
for i=1:lengthOfAwayTeam
    TeamDataAway(i).order=numbersOnly(i,1);
    TeamDataAway(i).Name=txtOnly(i,2);
    TeamDataAway(i).Position=txtOnly(i,1);
    TeamDataAway(i).BA=numbersOnly(i,4);
    TeamDataAway(i).OBP=numbersOnly(i,5);
    TeamDataAway(i).SLG=numbersOnly(i,6);
    TeamDataAway(i).OBA=numbersOnly(i,7);
end
