function PitcherData=loadPitcherData(TeamName)

switch TeamName
    case 'Mariners'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedMarinersPitchingDataFinal.xlsx','A1:C40');
    case 'Astros'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedAstrosPitchingDataFinal.xlsx','A1:C27');
    case 'Athletics'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedAthleticsPitchingDataFinal.xlsx','A1:C28');
    case 'Rangers'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedRangersPitchingDataFinal.xlsx','A1:C31');
    case 'Orioles'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedOriolesPitchingDataFinal.xlsx','A1:C26');
    case 'Angels'
        [numbersOnly,txtOnly,raw] = xlsread('FormattedAngelsPitchingDataFinal.xlsx','A1:C31');
end

for i=1:length(raw)
    PitcherData(i).Name=txtOnly(i,1);
    PitcherData(i).ERA=numbersOnly(i,1);
    PitcherData(i).OBA=numbersOnly(i,2);
end