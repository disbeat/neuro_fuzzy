function varargout = interface(varargin)
% INTERFACE M-file for interface.fig
%      INTERFACE, by itself, creates a new INTERFACE or raises the existing
%      singleton*.
%
%      H = INTERFACE returns the handle to a new INTERFACE or the handle to
%      the existing singleton*.
%
%      INTERFACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFACE.M with the given input arguments.
%
%      INTERFACE('Property','Value',...) creates a new INTERFACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before interface_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to interface_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help interface

% Last Modified by GUIDE v2.5 21-Dec-2009 23:13:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @interface_OpeningFcn, ...
                   'gui_OutputFcn',  @interface_OutputFcn, ...
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


% --- Executes just before interface is made visible.
function interface_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to interface (see VARARGIN)

% Choose default command line output for interface
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes interface wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = interface_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes during object creation, after setting all properties.
function influenceRange_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text4657 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function clusterNum_Callback(hObject, eventdata, handles)
% hObject    handle to clusterNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of clusterNum as text
%        str2double(get(hObject,'String')) returns contents of clusterNum as a double


% --- Executes during object creation, after setting all properties.
function clusterNum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to clusterNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function maxIterations_Callback(hObject, eventdata, handles)
% hObject    handle to maxIterations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of maxIterations as text
%        str2double(get(hObject,'String')) returns contents of maxIterations as a double


% --- Executes during object creation, after setting all properties.
function maxIterations_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maxIterations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function minImprovement_Callback(hObject, eventdata, handles)
% hObject    handle to minImprovement (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of minImprovement as text
%        str2double(get(hObject,'String')) returns contents of minImprovement as a double


% --- Executes during object creation, after setting all properties.
function minImprovement_CreateFcn(hObject, eventdata, handles)
% hObject    handle to minImprovement (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function exponent_Callback(hObject, eventdata, handles)
% hObject    handle to exponent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of exponent as text
%        str2double(get(hObject,'String')) returns contents of exponent as a double


% --- Executes during object creation, after setting all properties.
function exponent_CreateFcn(hObject, eventdata, handles)
% hObject    handle to exponent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function squash_Callback(hObject, eventdata, handles)
% hObject    handle to squash (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of squash as text
%        str2double(get(hObject,'String')) returns contents of squash as a double


% --- Executes during object creation, after setting all properties.
function squash_CreateFcn(hObject, eventdata, handles)
% hObject    handle to squash (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function acceptRatio_Callback(hObject, eventdata, handles)
% hObject    handle to acceptRatio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of acceptRatio as text
%        str2double(get(hObject,'String')) returns contents of acceptRatio as a double


% --- Executes during object creation, after setting all properties.
function acceptRatio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to acceptRatio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rejectRatio_Callback(hObject, eventdata, handles)
% hObject    handle to rejectRatio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rejectRatio as text
%        str2double(get(hObject,'String')) returns contents of rejectRatio as a double


% --- Executes during object creation, after setting all properties.
function rejectRatio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rejectRatio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function error_Callback(hObject, eventdata, handles)
% hObject    handle to error (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of error as text
%        str2double(get(hObject,'String')) returns contents of error as a double


% --- Executes during object creation, after setting all properties.
function error_CreateFcn(hObject, eventdata, handles)
% hObject    handle to error (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in fuzzyButton.
function fuzzyButton_Callback(hObject, eventdata, handles)
% hObject    handle to fuzzyButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

file = load('FIS.mat');
FIS = file.FIS;
fuzzy(FIS);

% --- Executes on button press in subtractiveButton.
function subtractiveButton_Callback(hObject, eventdata, handles)
% hObject    handle to subtractiveButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
active = get(hObject,'Value');
if active
    setClusteringMode(handles, 'on', 'off');
else
    setClusteringMode(handles, 'on', 'off');
end

% --- Executes on button press in cmeansButton.
function cmeansButton_Callback(hObject, eventdata, handles)
% hObject    handle to cmeansButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
active = get(hObject,'Value');
if active
    setClusteringMode(handles, 'off', 'on');
else
    setClusteringMode(handles, 'on', 'off');
end

function setClusteringMode(handles, sub, fuzzy )

set(handles.influenceRange, 'Enable', sub);
set(handles.squash, 'Enable', sub);
set(handles.acceptRatio, 'Enable', sub);
set(handles.rejectRatio, 'Enable', sub);

set(handles.clusterNum, 'Enable', fuzzy);
set(handles.maxIterations, 'Enable', fuzzy);
set(handles.minImprovement, 'Enable', fuzzy);
set(handles.exponent, 'Enable', fuzzy);

if strcmp(sub,'on')
    set(handles.cmeansButton, 'Value', 0);
    set(handles.subtractiveButton, 'Value', 1);    
end
if strcmp(fuzzy,'on')
    set(handles.subtractiveButton, 'Value', 0);
    set(handles.cmeansButton, 'Value', 1);    
end


% --- Executes on button press in runButton.
function runButton_Callback(hObject, eventdata, handles)
% hObject    handle to runButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

options = struct();
options.influenceRange = str2double(char(get(handles.influenceRange, 'String')));
options.squash = str2double(char(get(handles.squash, 'String')));
options.acceptRatio = str2double(char(get(handles.acceptRatio, 'String')));
options.rejectRatio = str2double(char(get(handles.rejectRatio, 'String')));
options.clusterNum = str2double(char(get(handles.clusterNum, 'String')));
options.maxIterations = str2double(char(get(handles.maxIterations, 'String')));
options.minImprovement = str2double(char(get(handles.minImprovement, 'String')));
options.exponent = str2double(char(get(handles.exponent, 'String')));

trainingOptions = struct();
trainingOptions.epochNumber = str2double(char(get(handles.epochNumber, 'String')));
trainingOptions.errorGoal = str2double(char(get(handles.errorGoal, 'String')));
trainingOptions.initialStep = str2double(char(get(handles.initialStep, 'String')));
trainingOptions.stepDecreaseRate = str2double(char(get(handles.stepDecreaseRate, 'String')));
trainingOptions.epochNumber = str2double(char(get(handles.epochNumber, 'String')));

if get(handles.cmeansButton, 'Value')
    type = 'fcm';
else
    type = 'subclust';
end

[error output expected] = anfis_test(type, options, trainingOptions);

axes(handles.axes1);
cla(handles.axes1,'reset');


toPlot = [output'; expected'];
x = 1:size(output', 2);
plot(x, toPlot);

%adds a title, x-axis description, and y-axis description
title('RESULT - Output vs Expected');
xlabel('X');
ylabel('Y');
guidata(hObject, handles); %updates the handles

set(handles.error, 'String', error);
set(handles.error, 'Enable', 'on');
set(handles.fuzzyButton, 'Enable', 'on');



function epochNumber_Callback(hObject, eventdata, handles)
% hObject    handle to epochNumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of epochNumber as text
%        str2double(get(hObject,'String')) returns contents of epochNumber as a double


% --- Executes during object creation, after setting all properties.
function epochNumber_CreateFcn(hObject, eventdata, handles)
% hObject    handle to epochNumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function errorGoal_Callback(hObject, eventdata, handles)
% hObject    handle to errorGoal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of errorGoal as text
%        str2double(get(hObject,'String')) returns contents of errorGoal as a double


% --- Executes during object creation, after setting all properties.
function errorGoal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to errorGoal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function initialStep_Callback(hObject, eventdata, handles)
% hObject    handle to initialStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of initialStep as text
%        str2double(get(hObject,'String')) returns contents of initialStep as a double


% --- Executes during object creation, after setting all properties.
function initialStep_CreateFcn(hObject, eventdata, handles)
% hObject    handle to initialStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function stepIncreaseRate_Callback(hObject, eventdata, handles)
% hObject    handle to stepIncreaseRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of stepIncreaseRate as text
%        str2double(get(hObject,'String')) returns contents of stepIncreaseRate as a double


% --- Executes during object creation, after setting all properties.
function stepIncreaseRate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stepIncreaseRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function stepDecreaseRate_Callback(hObject, eventdata, handles)
% hObject    handle to stepDecreaseRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of stepDecreaseRate as text
%        str2double(get(hObject,'String')) returns contents of stepDecreaseRate as a double


% --- Executes during object creation, after setting all properties.
function stepDecreaseRate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stepDecreaseRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
