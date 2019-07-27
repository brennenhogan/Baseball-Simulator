function populateDD(handles)

[~,~,TeamDataHome,lengthOfHomeTeam,TeamDataAway,lengthOfAwayTeam]=populateTeams(handles);

TeamData=TeamDataHome;
C=1;
First=1;
Second=1;
Third=1;
Short=1;
Left=1;
Center=1;
Right=1;
DH=1;
for i=1:lengthOfHomeTeam
    Position=TeamData(i).Position{1};
    switch Position
        case 'C'
            ArrayC(C)=TeamData(i).Name; 
            handles.CDropdownH.String=ArrayC;
            C=C+1;
        case '1B'
            Array1B(First)=TeamData(i).Name;
            handles.FirstDropdownH.String=Array1B;
            First=First+1;
        case '2B'
            Array2B(Second)=TeamData(i).Name;
            handles.SecondDropdownH.String=Array2B;
            Second=Second+1;
        case '3B'
            Array3B(Third)=TeamData(i).Name;
            handles.ThirdDropdownH.String=Array3B;
            Third=Third+1;
        case 'SS'
            ArraySS(Short)=TeamData(i).Name;
            handles.ShortDropdownH.String=ArraySS;
            Short=Short+1;
        case 'LF'
            ArrayLF(Left)=TeamData(i).Name;
            handles.LeftDropdownH.String=ArrayLF;
            Left=Left+1;
        case 'CF'
            ArrayCF(Center)=TeamData(i).Name;
            handles.CenterDropdownH.String=ArrayCF;
            Center=Center+1;
        case 'RF'
            ArrayRF(Right)=TeamData(i).Name;
            handles.RightDropdownH.String=ArrayRF;
            Right=Right+1;
        otherwise
            ArrayDH(DH)=TeamData(i).Name;
            handles.DHDropdownH.String=ArrayDH;
            DH=DH+1;
    end    
end

TeamData=TeamDataAway;
C=1;
First=1;
Second=1;
Third=1;
Short=1;
Left=1;
Center=1;
Right=1;
DH=1;
for i=1:lengthOfAwayTeam
    Position=TeamData(i).Position{1};
    switch Position
        case 'C'
            ArrayC1(C)=TeamData(i).Name; 
            handles.CDropdownA.String=ArrayC1;
            C=C+1;
        case '1B'
            Array1B1(First)=TeamData(i).Name;
            handles.FirstDropdownA.String=Array1B1;
            First=First+1;
        case '2B'
            Array2B1(Second)=TeamData(i).Name;
            handles.SecondDropdownA.String=Array2B1;
            Second=Second+1;
        case '3B'
            Array3B1(Third)=TeamData(i).Name;
            handles.ThirdDropdownA.String=Array3B1;
            Third=Third+1;
        case 'SS'
            ArraySS1(Short)=TeamData(i).Name;
            handles.ShortDropdownA.String=ArraySS1;
            Short=Short+1;
        case 'LF'
            ArrayLF1(Left)=TeamData(i).Name;
            handles.LeftDropdownA.String=ArrayLF1;
            Left=Left+1;
        case 'CF'
            ArrayCF1(Center)=TeamData(i).Name;
            handles.CenterDropdownA.String=ArrayCF1;
            Center=Center+1;
        case 'RF'
            ArrayRF1(Right)=TeamData(i).Name;
            handles.RightDropdownA.String=ArrayRF1;
            Right=Right+1;
        otherwise
            ArrayDH1(DH)=TeamData(i).Name;
            handles.DHDropdownA.String=ArrayDH1;
            DH=DH+1;
    end    
end