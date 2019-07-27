[numbersOnly,txtOnly,raw] = xlsread('FormattedWinsData.xlsx','A1:C30');
for i=1:length(raw)
    Historical(i).Home=txtOnly{i,1};
    Historical(i).Away=txtOnly{i,2};
    Historical(i).Record=numbersOnly(i);
end