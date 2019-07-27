function [TeamData,lengthOfTeam]=loadData(TeamName)

switch TeamName
    case 'Mariners'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedMarinersDataFinal.xlsx','A1:G23');
    case 'Astros'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedAstrosDataFinal.xlsx','A1:G20');
    case 'Athletics'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedAthleticsDataFinal.xlsx','A1:G26');
    case 'Rangers'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedRangersDataFinal.xlsx','A1:G21');
    case 'Orioles'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedOriolesDataFinal.xlsx','A1:G20');
    case 'Angles'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedAnglesDataFinal.xlsx','A1:G22');
end
lengthOfTeam=length(raw);
for i=1:lengthOfTeam
    TeamData(i).order=numbersOnly(i,1);
    TeamData(i).Name=txtOnly(i,2);
    TeamData(i).Position=txtOnly(i,1);
    TeamData(i).BA=numbersOnly(i,4);
    TeamData(i).OBP=numbersOnly(i,5);
    TeamData(i).SLG=numbersOnly(i,6);
    TeamData(i).OBA=numbersOnly(i,7);
end
hi=1;

