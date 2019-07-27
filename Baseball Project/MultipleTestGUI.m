function varargout = MultipleTestGUI(varargin)
% MULTIPLETESTGUI MATLAB code for MultipleTestGUI.fig
%      MULTIPLETESTGUI, by itself, creates a new MULTIPLETESTGUI or raises the existing
%      singleton*.
%
%      H = MULTIPLETESTGUI returns the handle to a new MULTIPLETESTGUI or the handle to
%      the existing singleton*.
%
%      MULTIPLETESTGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MULTIPLETESTGUI.M with the given input arguments.
%
%      MULTIPLETESTGUI('Property','Value',...) creates a new MULTIPLETESTGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MultipleTestGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MultipleTestGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MultipleTestGUI

% Last Modified by GUIDE v2.5 05-Apr-2018 10:25:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MultipleTestGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @MultipleTestGUI_OutputFcn, ...
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


% --- Executes just before MultipleTestGUI is made visible.
function MultipleTestGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MultipleTestGUI (see VARARGIN)

% Choose default command line output for MultipleTestGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MultipleTestGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MultipleTestGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function HomeBox_Callback(hObject, eventdata, handles)
% hObject    handle to HomeBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HomeBox as text
%        str2double(get(hObject,'String')) returns contents of HomeBox as a double


% --- Executes during object creation, after setting all properties.
function HomeBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HomeBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AwayBox_Callback(hObject, eventdata, handles)
% hObject    handle to AwayBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AwayBox as text
%        str2double(get(hObject,'String')) returns contents of AwayBox as a double


% --- Executes during object creation, after setting all properties.
function AwayBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AwayBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function HomeWinsBox_Callback(hObject, eventdata, handles)
% hObject    handle to HomeWinsBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HomeWinsBox as text
%        str2double(get(hObject,'String')) returns contents of HomeWinsBox as a double


% --- Executes during object creation, after setting all properties.
function HomeWinsBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HomeWinsBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AwayWinsBox_Callback(hObject, eventdata, handles)
% hObject    handle to AwayWinsBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AwayWinsBox as text
%        str2double(get(hObject,'String')) returns contents of AwayWinsBox as a double


% --- Executes during object creation, after setting all properties.
function AwayWinsBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AwayWinsBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in PLAYBALL.
function PLAYBALL_Callback(hObject, eventdata, handles)
% hObject    handle to PLAYBALL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
PlayBallF(handles)


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
