function varargout = BaseballGUI(varargin)
% BASEBALLGUI MATLAB code for BaseballGUI.fig
%      BASEBALLGUI, by itself, creates a new BASEBALLGUI or raises the existing
%      singleton*.
%
%      H = BASEBALLGUI returns the handle to a new BASEBALLGUI or the handle to
%      the existing singleton*.
%
%      BASEBALLGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BASEBALLGUI.M with the given input arguments.
%
%      BASEBALLGUI('Property','Value',...) creates a new BASEBALLGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BaseballGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BaseballGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BaseballGUI

% Last Modified by GUIDE v2.5 14-Apr-2018 15:35:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @BaseballGUI_OpeningFcn, ...
    'gui_OutputFcn',  @BaseballGUI_OutputFcn, ...
    'gui_LayoutFcn',  [] , ...
    'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before BaseballGUI is made visible.
function BaseballGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BaseballGUI (see VARARGIN)

% Choose default command line output for BaseballGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes BaseballGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);
handles.TeamDropdownH.String={'Angels','Astros','Athletics','Orioles','Mariners','Rangers'};
handles.TeamDropdownA.String={'Angels','Astros','Athletics','Orioles','Mariners','Rangers'};
populateDD(handles);

% --- Outputs from this function are returned to the command line.
function varargout = BaseballGUI_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in TeamDropdownH.
function TeamDropdownH_Callback(hObject, eventdata, handles)
% hObject    handle to TeamDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns TeamDropdownH contents as cell array
%        contents{get(hObject,'Value')} returns selected item from TeamDropdownH
populateDD(handles);

% --- Executes during object creation, after setting all properties.
function TeamDropdownH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TeamDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in PDropdownH.
function PDropdownH_Callback(hObject, eventdata, handles)
% hObject    handle to PDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns PDropdownH contents as cell array
%        contents{get(hObject,'Value')} returns selected item from PDropdownH


% --- Executes during object creation, after setting all properties.
function PDropdownH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in CDropdownH.
function CDropdownH_Callback(hObject, eventdata, handles)
% hObject    handle to CDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns CDropdownH contents as cell array
%        contents{get(hObject,'Value')} returns selected item from CDropdownH


% --- Executes during object creation, after setting all properties.
function CDropdownH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in FirstDropdownH.
function FirstDropdownH_Callback(hObject, eventdata, handles)
% hObject    handle to FirstDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns FirstDropdownH contents as cell array
%        contents{get(hObject,'Value')} returns selected item from FirstDropdownH


% --- Executes during object creation, after setting all properties.
function FirstDropdownH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FirstDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SecondDropdownH.
function SecondDropdownH_Callback(hObject, eventdata, handles)
% hObject    handle to SecondDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SecondDropdownH contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SecondDropdownH


% --- Executes during object creation, after setting all properties.
function SecondDropdownH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SecondDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in ThirdDropdownH.
function ThirdDropdownH_Callback(hObject, eventdata, handles)
% hObject    handle to ThirdDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns ThirdDropdownH contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ThirdDropdownH


% --- Executes during object creation, after setting all properties.
function ThirdDropdownH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThirdDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in ShortDropdownH.
function ShortDropdownH_Callback(hObject, eventdata, handles)
% hObject    handle to ShortDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns ShortDropdownH contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ShortDropdownH


% --- Executes during object creation, after setting all properties.
function ShortDropdownH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ShortDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in LeftDropdownH.
function LeftDropdownH_Callback(hObject, eventdata, handles)
% hObject    handle to LeftDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns LeftDropdownH contents as cell array
%        contents{get(hObject,'Value')} returns selected item from LeftDropdownH


% --- Executes during object creation, after setting all properties.
function LeftDropdownH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LeftDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in CenterDropdownH.
function CenterDropdownH_Callback(hObject, eventdata, handles)
% hObject    handle to CenterDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns CenterDropdownH contents as cell array
%        contents{get(hObject,'Value')} returns selected item from CenterDropdownH


% --- Executes during object creation, after setting all properties.
function CenterDropdownH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CenterDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in RightDropdownH.
function RightDropdownH_Callback(hObject, eventdata, handles)
% hObject    handle to RightDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns RightDropdownH contents as cell array
%        contents{get(hObject,'Value')} returns selected item from RightDropdownH


% --- Executes during object creation, after setting all properties.
function RightDropdownH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RightDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in DHDropdownH.
function DHDropdownH_Callback(hObject, eventdata, handles)
% hObject    handle to DHDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns DHDropdownH contents as cell array
%        contents{get(hObject,'Value')} returns selected item from DHDropdownH


% --- Executes during object creation, after setting all properties.
function DHDropdownH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DHDropdownH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in TeamDropdownA.
function TeamDropdownA_Callback(hObject, eventdata, handles)
% hObject    handle to TeamDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns TeamDropdownA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from TeamDropdownA
populateDD(handles);

% --- Executes during object creation, after setting all properties.
function TeamDropdownA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TeamDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DHOrderA_Callback(hObject, eventdata, handles)
% hObject    handle to DHOrderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DHOrderA as text
%        str2double(get(hObject,'String')) returns contents of DHOrderA as a double


% --- Executes during object creation, after setting all properties.
function DHOrderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DHOrderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RightOrderA_Callback(hObject, eventdata, handles)
% hObject    handle to RightOrderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RightOrderA as text
%        str2double(get(hObject,'String')) returns contents of RightOrderA as a double


% --- Executes during object creation, after setting all properties.
function RightOrderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RightOrderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CenterOrderA_Callback(hObject, eventdata, handles)
% hObject    handle to CenterOrderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CenterOrderA as text
%        str2double(get(hObject,'String')) returns contents of CenterOrderA as a double


% --- Executes during object creation, after setting all properties.
function CenterOrderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CenterOrderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function LeftOrderA_Callback(hObject, eventdata, handles)
% hObject    handle to LeftOrderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of LeftOrderA as text
%        str2double(get(hObject,'String')) returns contents of LeftOrderA as a double


% --- Executes during object creation, after setting all properties.
function LeftOrderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LeftOrderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ShortOrderA_Callback(hObject, eventdata, handles)
% hObject    handle to ShortOrderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ShortOrderA as text
%        str2double(get(hObject,'String')) returns contents of ShortOrderA as a double


% --- Executes during object creation, after setting all properties.
function ShortOrderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ShortOrderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ThirdOrderA_Callback(hObject, eventdata, handles)
% hObject    handle to ThirdOrderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ThirdOrderA as text
%        str2double(get(hObject,'String')) returns contents of ThirdOrderA as a double


% --- Executes during object creation, after setting all properties.
function ThirdOrderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThirdOrderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SecondOrderA_Callback(hObject, eventdata, handles)
% hObject    handle to SecondOrderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SecondOrderA as text
%        str2double(get(hObject,'String')) returns contents of SecondOrderA as a double


% --- Executes during object creation, after setting all properties.
function SecondOrderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SecondOrderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FirstOrderA_Callback(hObject, eventdata, handles)
% hObject    handle to FirstOrderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FirstOrderA as text
%        str2double(get(hObject,'String')) returns contents of FirstOrderA as a double


% --- Executes during object creation, after setting all properties.
function FirstOrderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FirstOrderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function COrderA_Callback(hObject, eventdata, handles)
% hObject    handle to COrderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of COrderA as text
%        str2double(get(hObject,'String')) returns contents of COrderA as a double


% --- Executes during object creation, after setting all properties.
function COrderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to COrderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in DHDropdownA.
function DHDropdownA_Callback(hObject, eventdata, handles)
% hObject    handle to DHDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns DHDropdownA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from DHDropdownA


% --- Executes during object creation, after setting all properties.
function DHDropdownA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DHDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in RightDropdownA.
function RightDropdownA_Callback(hObject, eventdata, handles)
% hObject    handle to RightDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns RightDropdownA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from RightDropdownA


% --- Executes during object creation, after setting all properties.
function RightDropdownA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RightDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in CenterDropdownA.
function CenterDropdownA_Callback(hObject, eventdata, handles)
% hObject    handle to CenterDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns CenterDropdownA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from CenterDropdownA


% --- Executes during object creation, after setting all properties.
function CenterDropdownA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CenterDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in LeftDropdownA.
function LeftDropdownA_Callback(hObject, eventdata, handles)
% hObject    handle to LeftDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns LeftDropdownA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from LeftDropdownA


% --- Executes during object creation, after setting all properties.
function LeftDropdownA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LeftDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in ShortDropdownA.
function ShortDropdownA_Callback(hObject, eventdata, handles)
% hObject    handle to ShortDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns ShortDropdownA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ShortDropdownA


% --- Executes during object creation, after setting all properties.
function ShortDropdownA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ShortDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in ThirdDropdownA.
function ThirdDropdownA_Callback(hObject, eventdata, handles)
% hObject    handle to ThirdDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns ThirdDropdownA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ThirdDropdownA


% --- Executes during object creation, after setting all properties.
function ThirdDropdownA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThirdDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SecondDropdownA.
function SecondDropdownA_Callback(hObject, eventdata, handles)
% hObject    handle to SecondDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SecondDropdownA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SecondDropdownA


% --- Executes during object creation, after setting all properties.
function SecondDropdownA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SecondDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in FirstDropdownA.
function FirstDropdownA_Callback(hObject, eventdata, handles)
% hObject    handle to FirstDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns FirstDropdownA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from FirstDropdownA


% --- Executes during object creation, after setting all properties.
function FirstDropdownA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FirstDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in CDropdownA.
function CDropdownA_Callback(hObject, eventdata, handles)
% hObject    handle to CDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns CDropdownA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from CDropdownA


% --- Executes during object creation, after setting all properties.
function CDropdownA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in PDropdownA.
function PDropdownA_Callback(hObject, eventdata, handles)
% hObject    handle to PDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns PDropdownA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from PDropdownA


% --- Executes during object creation, after setting all properties.
function PDropdownA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PDropdownA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function COrderH_Callback(hObject, eventdata, handles)
% hObject    handle to COrderH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of COrderH as text
%        str2double(get(hObject,'String')) returns contents of COrderH as a double


% --- Executes during object creation, after setting all properties.
function COrderH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to COrderH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FirstOrderH_Callback(hObject, eventdata, handles)
% hObject    handle to FirstOrderH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FirstOrderH as text
%        str2double(get(hObject,'String')) returns contents of FirstOrderH as a double


% --- Executes during object creation, after setting all properties.
function FirstOrderH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FirstOrderH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SecondOrderH_Callback(hObject, eventdata, handles)
% hObject    handle to SecondOrderH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SecondOrderH as text
%        str2double(get(hObject,'String')) returns contents of SecondOrderH as a double


% --- Executes during object creation, after setting all properties.
function SecondOrderH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SecondOrderH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ThirdOrderH_Callback(hObject, eventdata, handles)
% hObject    handle to ThirdOrderH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ThirdOrderH as text
%        str2double(get(hObject,'String')) returns contents of ThirdOrderH as a double


% --- Executes during object creation, after setting all properties.
function ThirdOrderH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThirdOrderH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ShortOrderH_Callback(hObject, eventdata, handles)
% hObject    handle to ShortOrderH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ShortOrderH as text
%        str2double(get(hObject,'String')) returns contents of ShortOrderH as a double


% --- Executes during object creation, after setting all properties.
function ShortOrderH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ShortOrderH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function LeftOrderH_Callback(hObject, eventdata, handles)
% hObject    handle to LeftOrderH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of LeftOrderH as text
%        str2double(get(hObject,'String')) returns contents of LeftOrderH as a double


% --- Executes during object creation, after setting all properties.
function LeftOrderH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LeftOrderH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CenterOrderH_Callback(hObject, eventdata, handles)
% hObject    handle to CenterOrderH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CenterOrderH as text
%        str2double(get(hObject,'String')) returns contents of CenterOrderH as a double


% --- Executes during object creation, after setting all properties.
function CenterOrderH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CenterOrderH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RightOrderH_Callback(hObject, eventdata, handles)
% hObject    handle to RightOrderH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RightOrderH as text
%        str2double(get(hObject,'String')) returns contents of RightOrderH as a double


% --- Executes during object creation, after setting all properties.
function RightOrderH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RightOrderH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NumberOfGames_Callback(hObject, eventdata, handles)
% hObject    handle to NumberOfGames (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NumberOfGames as text
%        str2double(get(hObject,'String')) returns contents of NumberOfGames as a double


% --- Executes during object creation, after setting all properties.
function NumberOfGames_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NumberOfGames (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in PlayButtonT.
function PlayButtonT_Callback(hObject, eventdata, handles)
% hObject    handle to PlayButtonT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function HomeTeam_Callback(hObject, eventdata, handles)
% hObject    handle to HomeTeam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HomeTeam as text
%        str2double(get(hObject,'String')) returns contents of HomeTeam as a double


% --- Executes during object creation, after setting all properties.
function HomeTeam_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HomeTeam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AwayTeam_Callback(hObject, eventdata, handles)
% hObject    handle to AwayTeam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AwayTeam as text
%        str2double(get(hObject,'String')) returns contents of AwayTeam as a double


% --- Executes during object creation, after setting all properties.
function AwayTeam_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AwayTeam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in PopulateButton.
function PopulateButton_Callback(hObject, eventdata, handles)
% hObject    handle to PopulateButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




function DHOrderH_Callback(hObject, eventdata, handles)
% hObject    handle to DHOrderH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DHOrderH as text
%        str2double(get(hObject,'String')) returns contents of DHOrderH as a double


% --- Executes during object creation, after setting all properties.
function DHOrderH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DHOrderH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in FeedSelection.
function FeedSelection_Callback(hObject, eventdata, handles)
% hObject    handle to FeedSelection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of FeedSelection


% --- Executes on button press in PlayButtonH.
function PlayButtonH_Callback(hObject, eventdata, handles)
% hObject    handle to PlayButtonH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in PlayButtonA.
function PlayButtonA_Callback(hObject, eventdata, handles)
% hObject    handle to PlayButtonA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
handles.HomeWinsT.String=num2str(0);
handles.AwayWinsT.String=num2str(0);
handles.HomeWinsA.String=num2str(0);
handles.AwayWinsA.String=num2str(0);
handles.HomeWinsH.String=num2str(0);
handles.AwayWinsH.String=num2str(0);
handles.WinDifferenceT.String=num2str(0);
handles.WinDifferenceA.String=num2str(0);
HistoricalSim(handles);
PlayBallF(handles);
DifferenceT=(abs(str2double(handles.HomeWinsT.String)-str2double(handles.HomeWinsH.String))/str2double(handles.NumberOfGames.String)*100);
RoundedDifferenceT=round(DifferenceT,2);
handles.WinDifferenceT.String=num2str(RoundedDifferenceT);
MasterScriptOBA(handles);
DifferenceA=(abs(str2double(handles.HomeWinsA.String)-str2double(handles.HomeWinsH.String))/str2double(handles.NumberOfGames.String)*100);
RoundedDifferenceA=round(DifferenceA,2);
handles.WinDifferenceA.String=num2str(RoundedDifferenceA);
