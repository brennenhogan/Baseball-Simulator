function [HomeLineup,AwayLineup]=OrganizeLineups(handles)

[~,~,TeamDataHome,lengthOfHomeTeam,TeamDataAway,lengthOfAwayTeam]=populateTeams(handles);


%% Catcher Placement
HomeCString=handles.CDropdownH.String;
HomeIndex=handles.CDropdownH.Value;
HomeC=HomeCString{HomeIndex,1};
TrueOrFalse=0;
HCOrder=str2double(handles.COrderH.String);
i=1;
while TrueOrFalse==0
    switch HomeC
        case TeamDataHome(i).Name
            HomeLineup(HCOrder)=TeamDataHome(i);
            TrueOrFalse=1;
    end
    i=i+1;
end

%% First basemen placement
HomeFirstString=handles.FirstDropdownH.String;
HomeIndex=handles.FirstDropdownH.Value;
HomeFirst=HomeFirstString{HomeIndex,1};
TrueOrFalse=0;
HFirstOrder=str2double(handles.FirstOrderH.String);

i=1;
while TrueOrFalse==0
    switch HomeFirst
        case TeamDataHome(i).Name
            HomeLineup(HFirstOrder)=TeamDataHome(i);
            TrueOrFalse=1;
    end
    i=i+1;
end
%% Second baseman placement
HomeSecondString=handles.SecondDropdownH.String;
HomeIndex=handles.SecondDropdownH.Value;
HomeSecond=HomeSecondString{HomeIndex,1};
TrueOrFalse=0;
HSecondOrder=str2double(handles.SecondOrderH.String);

i=1;
while TrueOrFalse==0
    switch HomeSecond
        case TeamDataHome(i).Name
            HomeLineup(HSecondOrder)=TeamDataHome(i);
            TrueOrFalse=1;
    end
    i=i+1;
end

%% Third Baemen placement
HomeThirdString=handles.ThirdDropdownH.String;
HomeIndex=handles.ThirdDropdownH.Value;
HomeThird=HomeThirdString{HomeIndex,1};
TrueOrFalse=0;
HThirdOrder=str2double(handles.ThirdOrderH.String);

i=1;
while TrueOrFalse==0
    switch HomeThird
        case TeamDataHome(i).Name
            HomeLineup(HThirdOrder)=TeamDataHome(i);
            TrueOrFalse=1;
    end
    i=i+1;
end

%% Shortstop placement
HomeShortString=handles.ShortDropdownH.String;
HomeIndex=handles.ShortDropdownH.Value;
HomeShort=HomeShortString{HomeIndex,1};
TrueOrFalse=0;
HShortOrder=str2double(handles.ShortOrderH.String);

i=1;
while TrueOrFalse==0
    switch HomeShort
        case TeamDataHome(i).Name
            HomeLineup(HShortOrder)=TeamDataHome(i);
            TrueOrFalse=1;
    end
    i=i+1;
end

%% Left Field Placement
HomeLeftString=handles.LeftDropdownH.String;
HomeIndex=handles.LeftDropdownH.Value;
HomeLeft=HomeLeftString{HomeIndex,1};
TrueOrFalse=0;
HLeftOrder=str2double(handles.LeftOrderH.String);

i=1;
while TrueOrFalse==0
    switch HomeLeft
        case TeamDataHome(i).Name
            HomeLineup(HLeftOrder)=TeamDataHome(i);
            TrueOrFalse=1;
    end
    i=i+1;
end

%% Center Field Placement
HomeCenterString=handles.CenterDropdownH.String;
HomeIndex=handles.CenterDropdownH.Value;
HomeCenter=HomeCenterString{HomeIndex,1};
TrueOrFalse=0;
HCenterOrder=str2double(handles.CenterOrderH.String);

i=1;
while TrueOrFalse==0
    switch HomeCenter
        case TeamDataHome(i).Name
            HomeLineup(HCenterOrder)=TeamDataHome(i);
            TrueOrFalse=1;
    end
    i=i+1;
end

%% Right Field Placement
HomeRightString=handles.RightDropdownH.String;
HomeIndex=handles.RightDropdownH.Value;
HomeRight=HomeRightString{HomeIndex,1};
TrueOrFalse=0;
HRightOrder=str2double(handles.RightOrderH.String);

i=1;
while TrueOrFalse==0
    switch HomeRight
        case TeamDataHome(i).Name
            HomeLineup(HRightOrder)=TeamDataHome(i);
            TrueOrFalse=1;
    end
    i=i+1;
end

%% DH Placement
HomeDHString=handles.DHDropdownH.String;
HomeIndex=handles.DHDropdownH.Value;
HomeDH=HomeDHString{HomeIndex,1};
TrueOrFalse=0;
HDHOrder=str2double(handles.DHOrderH.String);

i=1;
while TrueOrFalse==0
    switch HomeDH
        case TeamDataHome(i).Name
            HomeLineup(HDHOrder)=TeamDataHome(i);
            TrueOrFalse=1;
    end
    i=i+1;
end

%% Catcher Placement
AwayCString=handles.CDropdownA.String;
AwayIndex=handles.CDropdownA.Value;
AwayC=AwayCString{AwayIndex,1};
TrueOrFalse=0;
ACOrder=str2double(handles.COrderA.String);

i=1;
while TrueOrFalse==0
    switch AwayC
        case TeamDataAway(i).Name
            AwayLineup(ACOrder)=TeamDataAway(i);
            TrueOrFalse=1;
    end
    i=i+1;
end

%% First basemen placement
AwayFirstString=handles.FirstDropdownA.String;
AwayIndex=handles.FirstDropdownA.Value;
AwayFirst=AwayFirstString{AwayIndex,1};
TrueOrFalse=0;
AFirstOrder=str2double(handles.FirstOrderA.String);

i=1;
while TrueOrFalse==0
    switch AwayFirst
        case TeamDataAway(i).Name
            AwayLineup(AFirstOrder)=TeamDataAway(i);
            TrueOrFalse=1;
    end
    i=i+1;
end
%% Second baseman placement
AwaySecondString=handles.SecondDropdownA.String;
AwayIndex=handles.SecondDropdownA.Value;
AwaySecond=AwaySecondString{AwayIndex,1};
TrueOrFalse=0;
ASecondOrder=str2double(handles.SecondOrderA.String);

i=1;
while TrueOrFalse==0
    switch AwaySecond
        case TeamDataAway(i).Name
            AwayLineup(ASecondOrder)=TeamDataAway(i);
            TrueOrFalse=1;
    end
    i=i+1;
end

%% Third Baemen placement
AwayThirdString=handles.ThirdDropdownA.String;
AwayIndex=handles.ThirdDropdownA.Value;
AwayThird=AwayThirdString{AwayIndex,1};
TrueOrFalse=0;
AThirdOrder=str2double(handles.ThirdOrderA.String);

i=1;
while TrueOrFalse==0
    switch AwayThird
        case TeamDataAway(i).Name
            AwayLineup(AThirdOrder)=TeamDataAway(i);
            TrueOrFalse=1;
    end
    i=i+1;
end

%% Shortstop placement
AwayShortString=handles.ShortDropdownA.String;
AwayIndex=handles.ShortDropdownA.Value;
AwayShort=AwayShortString{AwayIndex,1};
TrueOrFalse=0;
AShortOrder=str2double(handles.ShortOrderA.String);

i=1;
while TrueOrFalse==0
    switch AwayShort
        case TeamDataAway(i).Name
            AwayLineup(AShortOrder)=TeamDataAway(i);
            TrueOrFalse=1;
    end
    i=i+1;
end

%% Left Field Placement
AwayLeftString=handles.LeftDropdownA.String;
AwayIndex=handles.LeftDropdownA.Value;
AwayLeft=AwayLeftString{AwayIndex,1};
TrueOrFalse=0;
ALeftOrder=str2double(handles.LeftOrderA.String);

i=1;
while TrueOrFalse==0
    switch AwayLeft
        case TeamDataAway(i).Name
            AwayLineup(ALeftOrder)=TeamDataAway(i);
            TrueOrFalse=1;
    end
    i=i+1;
end

%% Center Field Placement
AwayCenterString=handles.CenterDropdownA.String;
AwayIndex=handles.CenterDropdownA.Value;
AwayCenter=AwayCenterString{AwayIndex,1};
TrueOrFalse=0;
ACenterOrder=str2double(handles.CenterOrderA.String);

i=1;
while TrueOrFalse==0
    switch AwayCenter
        case TeamDataAway(i).Name
            AwayLineup(ACenterOrder)=TeamDataAway(i);
            TrueOrFalse=1;
    end
    i=i+1;
end

%% Right Field Placement
AwayRightString=handles.RightDropdownA.String;
AwayIndex=handles.RightDropdownA.Value;
AwayRight=AwayRightString{AwayIndex,1};
TrueOrFalse=0;
ARightOrder=str2double(handles.RightOrderA.String);

i=1;
while TrueOrFalse==0
    switch AwayRight
        case TeamDataAway(i).Name
            AwayLineup(ARightOrder)=TeamDataAway(i);
            TrueOrFalse=1;
    end
    i=i+1;
end

%% DH Placement
AwayDHString=handles.DHDropdownA.String;
AwayIndex=handles.DHDropdownA.Value;
AwayDH=AwayDHString{AwayIndex,1};
TrueOrFalse=0;
ADHOrder=str2double(handles.DHOrderA.String);

i=1;
while TrueOrFalse==0
    switch AwayDH
        case TeamDataAway(i).Name
            AwayLineup(ADHOrder)=TeamDataAway(i);
            TrueOrFalse=1;
    end
    i=i+1;
end