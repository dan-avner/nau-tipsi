%{
CAMERA_CONTROL MATLAB code for camera_control.fig

Version 1.0, davner@nau.edu, Dan Avner
Last Updated: 04/10/2017

CAMERA_CONTROL, by itself, creates a new CAMERA_CONTROL or raises the existing
singleton*.

H = CAMERA_CONTROL returns the handle to a new CAMERA_CONTROL or the handle to
the existing singleton*.

CAMERA_CONTROL('CALLBACK',hObject,eventData,handles,...) calls the local
function named CALLBACK in CAMERA_CONTROL.M with the given input arguments.

See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one instance
to run (singleton)".

See also: GUIDE, GUIDATA, GUIHANDLES

Edit the above text to modify the response to help camera_control

Last Modified by GUIDE v2.5 22-Mar-2017 12:05:11

This creates the GUI for camera control of TIPSI. This was created by using
GUIDE on MATLAB. Please read the documentation.
%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
%                                 DO NOT EDIT                                 %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Begin initialization code
function varargout = camera_control(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @camera_control_OpeningFcn, ...
                   'gui_OutputFcn',  @camera_control_OutputFcn, ...
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
%                                   Start Up                                  %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%{
Place things that need to be initialized before the user sees the gui like the
title or imports.
%}

function camera_control_OpeningFcn(hObject, ~, handles, varargin)

% Choose default command line output for camera_control
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% Add title image to top axes
axes(handles.logo_axesImage);
imshow('tipsi.png');
axes(handles.nauLogo_axesImage);
imshow('naulogo.png');

% Disable all in Acquisition panel.
set(findall(handles.acquisition_uiPanel,'-property','enable'),'enable','off')
set(findall(handles.reduce_uiButtonGroup, '-property','enable'),'enable','off')

% Outputs from this function are returned to the command line.
function varargout = camera_control_OutputFcn(~, ~, handles)

varargout{1} = handles.output;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
%              Edit Text Boxes, Checkboxes, Pushbuttons created               %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%{
This creates all the inputs boxes on the GUI. Some of the input boxes are
pulled from immediately when entered, such as the directory, however most are
pulled from when the initialize button is pressed.
%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Continued %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function framesTrig_editText_Callback(~, ~, ~)

function framesTrig_editText_CreateFcn(hObject, ~, ~)

if ispc && isequal(get(hObject,'BackgroundColor'), ...
    get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Continued %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function format_editText_Callback(hObject, eventdata, handles)

function format_editText_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), ...
    get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Continued %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function secondsStack_edittext_Callback(hObject, eventdata, handles)

function secondsStack_edittext_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), ...
    get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Continued %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function directory_pushButton_Callback(hObject, eventdata, handles)

dirName = uigetdir('D:\');
set(handles.paraSelectedDirectory_staticText,'String',dirName);
guidata(hObject, handles)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Continued %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function secondsExpose_editText_Callback(hObject, eventdata, handles)

guidata(hObject, handles)

function secondsExpose_editText_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), ...
    get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Continued %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function updateImageNumber_editText_Callback(hObject, eventdata, handles)

%imageNum = str2num(get(hObject,'String'));
% Checks to see if the input is empty and if so inserts a 1
input = get(handles.updateImageNumber_editText,'String');
if isempty(input)
    set(hObject,'String','1');
end

% Executes during object creation, after setting all properties
function updateImageNumber_editText_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), ...
    get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function updateImageNumber_checkbox_Callback(~, ~, ~)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Continued %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function object_editText_Callback(hObject, eventdata, handles)

function object_editText_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), ...
    get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Continued %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function camModel_editText_Callback(hObject, eventdata, handles)

function camModel_editText_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), ...
    get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Continued %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function adapt_editText_Callback(~, ~, ~)

function adapt_editText_CreateFcn(hObject, ~, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), ...
    get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Continued %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function port_editText_Callback(~, ~, ~)

function port_editText_CreateFcn(hObject, ~, ~)

if ispc && isequal(get(hObject,'BackgroundColor'), ...
    get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Continued %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function saveRaw_checkbox_Callback(hObject, eventdata, handles)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Continued %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function reduce_uiButtonGroup_CreateFcn(hObject, eventdata, handles)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Continued %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function defaultMed_radioButton_Callback(hObject, eventdata, handles)

function defaultMed_radioButton_CreateFcn(hObject, eventdata, handles)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Continued %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function medCombine_radioButton_Callback(hObject, eventdata, handles)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Continued %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function averageCombine_radioButton_Callback(hObject, eventdata, handles)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
%                                   Expose                                    %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%{
Main loop of GUI. This takes all the parameters and gets data from the camera.
The program takes how many frames you want and median subtracts them then
stacks them or it does the process specified. The default process if the med
sub and med combine. This is then written to a fits file. It is also in charge
of updating image numbers.
%}

% Executes on button press in expose_pushButton.
function expose_pushButton_Callback(~, ~, handles)

% Import the fits file creator
import matlab.io.*;

% Gets the value for seconds to expose for and checks it
imageStackCollect = get(handles.secondsExpose_editText,'String');
numStackCheck = str2num(imageStackCollect);
isIntegerStack = not(~isempty(numStackCheck) ...
    && isnumeric(numStackCheck) ...
    && isreal(numStackCheck) ...
    && all(isfinite(numStackCheck)) ...
    && all(numStackCheck == fix(numStackCheck))...
    && (numStackCheck > 0));

% Issues warning and resets if this is the issue
if isIntegerStack
    warningMessage = sprintf('Error: Invalid entry for images to stack!');
    uiwait(warndlg(warningMessage));
    return; % get out and don't process further
end

% Gets the path from the directory display and checks it
path = get(handles.paraSelectedDirectory_staticText,'String');
path = strcat('!', path);

% Checks to see if object name is added
objectName = get(handles.object_editText,'String');
if (isempty(objectName))
    objectName = 'None';
end

% Check to see what data reduction process to use
reduceProcess = get(handles.paraDataReduce_staticText,'String');

% Pulls current image to write from parameters panel and converts
imageNum = get(handles.paraImageNumber_staticText,'String');
imageNum = extractBetween(imageNum,'.','.');
imageNum = str2double(imageNum);

% Disable the unlock button and expose button
set(handles.unlock_toggleButton,'Enable','off')
set(handles.expose_pushButton,'Enable','off')

% Start new progress bar and place in correct position
position = [280 112 260 27];
progressBar = uiwaitbar(position);
n = str2num(imageStackCollect);
set(handles.proBar_staticText,'Visible','off')
set(handles.outProgress_staticText,'String','Exposing...')

saveRaw = handles.saveRaw;

% Main loop for image acquisition and stacking
for i=1:str2num(imageStackCollect)
    % Update the next file output
    prefix = datestr(datetime('now','TimeZone','utc'), 'yyyymmdd');
    imageNumDisplay = imageNum + 1;
    next_file = strcat(prefix,'.',num2str(imageNumDisplay,'%05d'),'.fits');
    set(handles.paraImageNumber_staticText,'String',next_file)
    
    uiwaitbar(progressBar,i/n);
    outPro = strcat(num2str(i),'/',num2str(n));
    set(handles.outProgress_staticText,'String',outPro);
    
    % Get the video object
    flirVid = handles.flirVid;
    start(flirVid);
    wait(flirVid);
    numAcquired = flirVid.FramesAcquired;
    numAcquired = int16(numAcquired);
    imageData = getdata(flirVid);

    % Initialize the out array and prefill it for speed increase
    out = zeros(512,640,numAcquired);

    % If the checkbox for saving raw is checked, do this
    if saveRaw
        rawNum = 1;

        % Get the names of the raw folders to write
        imageStr = num2str(imageNum,'%05d');
        %imageLoop = get(handles.paraImageNumber_staticText,'String');
        %imageStr = extractBetween(imageLoop,'.','.');

        % Check to see if the raw folders already exist (for overwriting)
        rawPath = handles.rawPath;
        rawPathImage = fullfile(rawPath,char(imageStr));

        % Create the raw directory if it does not exist at the path
        if ~exist(rawPathImage,'dir')
            mkdir(rawPathImage);
        end

        rawPathImage = strcat('!',rawPathImage);
    end

    % For each frame, subtract the median and put into out array
    for f = 1:numAcquired
        data = imageData(:,:,:,f);
        data1 = int16(data);

        % If the checkbox for save raw is checked, do this
        if saveRaw
            % Create the fits file and save the raw image data
            fileRaw = strcat('raw.',num2str(rawNum,'%05d'),'.fits');
            rawImage = fits.createFile(fullfile(rawPathImage,fileRaw));
            fits.createImg(rawImage,'int16',[512 640]);
            fits.writeDate(rawImage);
            fits.writeKey(rawImage,'REDUCE',reduceProcess);
            fits.writeKey(rawImage,'OBJECT',objectName);
            fits.writeImg(rawImage,data1);
            fits.closeFile(rawImage);
            rawNum = rawNum + 1;
        end

        % Data reduce using defined process
        if strcmp(reduceProcess, 'Med Sub/Med Comb')
            % Save each median subtracted frame to the out array
            m = median(data(:));
            m1 = int16(m);
            frame = data1 - m1;
            out(:,:,f) = frame;
            out = int16(out);
        % Do nothing and store to out if not median subtract
        else
            frame = data1;
            out(:,:,f) = frame;
        end
    end

    % Determine what reduce process to produce the final image
    if strcmp(reduceProcess, 'Med Sub/Med Comb') ...
        || strcmp(reduceProcess, 'Median Combine')
        % Take the median of the out array
        finalImg = median(out,3);
    elseif strcmp(reduceProcess, 'Average Combine')
        % Take the average of the out array
        finalImg = mean(out,3);
    end

    % Write stacked data out to a file
    prefix = datestr(datetime('now','TimeZone','utc'), 'yyyymmdd');
    filename = strcat(prefix,'.',num2str(imageNum,'%05d'),'.fits');
    fptr = fits.createFile(fullfile(path, filename));
    fits.createImg(fptr,'int16',[512 640]);
    fits.writeDate(fptr);
    fits.writeKey(fptr,'REDUCE',reduceProcess);
    fits.writeKey(fptr,'OBJECT',objectName)
    fits.writeImg(fptr,finalImg);
    fits.closeFile(fptr);
    
    imageNum = imageNum + 1;
end

% Enable the expose button and make progress bar happy
set(handles.expose_pushButton,'Enable','on')
set(handles.proBar_staticText,'Visible','on')
set(handles.proBar_staticText,'BackgroundColor','green')
set(handles.unlock_toggleButton,'Enable','on')
set(handles.outProgress_staticText,'String','Done...')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
%                                   Unlock                                    %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%{
When the unlock button is pressed, it enables all of the options in the
configuration panel. This is to remove the chances of human error inputting a
incorrect value into the configuration. When the unlock button is toggled off,
it locks the panel options.
%}

% Executes on button press in unlock_toggleButton
function unlock_toggleButton_Callback(hObject, eventdata, handles)

% Gets the state of the unlock_toggleButton
buttonState = get(hObject,'Value');

% If button value is 1, enables the configuration panel
if buttonState
    set(handles.unlock_toggleButton,'String','Lock');
    %set(handles.camModel_editText,'enable','on');
    %set(handles.adapt_editText,'enable','on');
    %set(handles.format_editText,'enable','on');
    set(handles.updateImageNumber_editText,'Enable','on');
    set(handles.directory_pushButton,'Enable','on');
    set(handles.updateImageNumber_checkbox,'Enable','on');
    set(handles.initializeCam_pushButton, 'Enable','on');
    set(handles.framesTrig_editText,'Enable','on');
    set(handles.port_editText,'Enable','on');
    set(handles.saveRaw_checkbox,'Enable','on')
    set(handles.model_staticText,'Enable','on');
    set(handles.adapter_staticText,'Enable','on');
    set(handles.format_staticText,'Enable','on');
    set(handles.port_staticText,'Enable','on');
    set(handles.path_staticText,'Enable','on');
    set(handles.nextImage_staticText,'Enable','on');
    set(handles.configFramesStack_staticText,'Enable','on');
    set(findall(handles.reduce_uiButtonGroup, '-property','enable'),...
        'enable','on')
    set(handles.configData_staticText,'Enable','on');

% Else it disables the configuration panel
else
    set(handles.unlock_toggleButton,'String','Unlock');
    %set(handles.camModel_editText,'enable','off');
    %set(handles.adapt_editText,'enable','off');
    %set(handles.format_editText,'enable','off');
    set(handles.updateImageNumber_checkbox,'Enable','off');
    set(handles.directory_pushButton,'Enable','off');
    set(handles.initializeCam_pushButton, 'Enable','off');
    set(handles.framesTrig_editText,'Enable','off');
    set(handles.updateImageNumber_editText,'Enable','off');
    set(handles.port_editText,'Enable','off');
    set(handles.saveRaw_checkbox,'Enable','off')
    set(handles.model_staticText,'Enable','off');
    set(handles.adapter_staticText,'Enable','off');
    set(handles.format_staticText,'Enable','off');
    set(handles.port_staticText,'Enable','off');
    set(handles.path_staticText,'Enable','off');
    set(handles.nextImage_staticText,'Enable','off');
    set(handles.configFramesStack_staticText,'Enable','off');
    set(findall(handles.reduce_uiButtonGroup, '-property','enable'),...
        'enable','off')
    set(handles.configData_staticText,'Enable','off');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
%                                 Initialize                                  %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%{
This is the main process that occurs when the initalize button is pressed. The
path is checked first, if path was not selected then an error is returned and
the program does not continue. Next the program will try to connect to the
camera. We get all the edit text inputs and set them to the correct variables.
Next a video object is created (flirVid) and we set its parameters. The set
section then updates the parameters section in the GUI. The last check is to
update the image number. This occurs if the checkbox is checked and the image
number is not zero. All of the inputs in the configuration settings are then
disabled and the lock button is enabled. This is to prevent people from
accidently changing the parameters.
%}

% Executes on button press in initializeCam_pushButton
function initializeCam_pushButton_Callback(hObject, ~, handles)

% Gets the path from input and checks it
path = get(handles.paraSelectedDirectory_staticText,'String');

if strcmp('Not available...', path) || strcmp('0', path)
    warningMessage = sprintf('Error: You must supply a path to write to!');
    uiwait(warndlg(warningMessage));
    return;
end

% Create the raw folder path
rawPath = path;

% Initialize the camera
try
    % Get camera parameters
    camModel = get(handles.camModel_editText,'String');
    adapter = get(handles.adapt_editText,'String');
    camFormat = get(handles.format_editText,'String');
    port = get(handles.port_editText,'String');
    updateImage = get(handles.updateImageNumber_checkbox,'Value');
    framesTrig = get(handles.framesTrig_editText,'String');
    if get(handles.defaultMed_radioButton,'Value')
        outputReduceProcess = 'Med Sub/Med Comb';
    elseif get(handles.medCombine_radioButton,'Value')
        outputReduceProcess = 'Median Combine';
    elseif get(handles.averageCombine_radioButton,'Value')
        outputReduceProcess = 'Average Combine';
    end

    % This checks to see if port 1 or port 2 is selected
    if not(strcmp('1',port) || strcmp('2',port))
        warningMessage = sprintf('Error: Invalid port!');
        uiwait(warndlg(warningMessage));
        return; % get out and don't process further
    end

    % Checks to see if image number is correct format
    imageNum = get(handles.updateImageNumber_editText,'String');
    numImageCheck = str2num(imageNum);
    isIntegerImage = not(~isempty(numImageCheck) ...
        && isnumeric(numImageCheck) ...
        && isreal(numImageCheck) ...
        && all(isfinite(numImageCheck)) ...
        && all(numImageCheck == fix(numImageCheck))...
        && (numImageCheck > 0));

    % Issues warning and resets if this is the issue
    if isIntegerImage
        warningMessage = sprintf('Error: Invalid entry image number!');
        uiwait(warndlg(warningMessage));
        return; % get out and don't process further
    end

    % Check to see if input for frames/stack meets the criteria
    numImageStack = str2num(framesTrig);
    isIntegerFrame = not(~isempty(numImageStack) ...
        && isnumeric(numImageStack) ...
        && isreal(numImageStack) ...
        && all(isfinite(numImageStack)) ...
        && all(numImageStack == fix(numImageStack))...
        && (numImageStack > 0));
    if isIntegerFrame
        warningMessage = sprintf('Error: Invalid entry for frames/stack!');
        uiwait(warndlg(warningMessage));
        return; % get out and don't process further
    end

    % Create video object
    flirVid = videoinput(adapter,str2num(port),camFormat);
    flirVid.FrameGrabInterval = 1;
    flirVid.FramesPerTrigger = str2double(framesTrig);
    flirVid.Timeout = 1800; % Change this for longer stacking

    % Update parameters
    set(handles.paraStat_staticText,'BackgroundColor','green');
    set(handles.paraStat_staticText,'String','Connected!');
    set(handles.paraMod_staticText,'String',camModel);
    set(handles.paraAdapt_staticText,'String',adapter);
    set(handles.paraFor_staticText,'String',camFormat);
    set(handles.paraPortDisp_staticText,'String',port);
    set(handles.paraDataReduce_staticText,'String',outputReduceProcess);
    set(handles.paraFrameStack_staticText,'String',framesTrig);

    % Checks image number and updates if needed
    if updateImage
        imageNum = str2num(imageNum);
        prefix = datestr(datetime('now','TimeZone','utc'), 'yyyymmdd');
        filename = strcat(prefix,'.',num2str(imageNum,'%05d'),'.fits');
        set(handles.paraImageNumber_staticText,'String',filename);
    end

    % Check to see if the user wants to save the raw data
    saveRaw = get(handles.saveRaw_checkbox,'Value');
    handles.saveRaw = saveRaw;
    guidata(hObject,handles);

    if saveRaw
        set(handles.paraSaveRaw_staticText,'String','Saving')
    else
        set(handles.paraSaveRaw_staticText,'String','Discarding')
    end

    % this makes it callable to other functions
    handles.rawPath = rawPath;
    guidata(hObject,handles);

    % this makes it callable to other functions
    handles.flirVid = flirVid;
    guidata(hObject,handles);

    % Sets all items in configurations to off
    set(handles.unlock_toggleButton,'String','Unlock');
    %set(handles.camModel_editText,'enable','off');
    %set(handles.adapt_editText,'enable','off');
    %set(handles.format_editText,'enable','off');
    set(handles.updateImageNumber_checkbox,'Value',0);
    set(handles.updateImageNumber_checkbox,'Enable','off');
    set(handles.directory_pushButton,'Enable','off');
    set(handles.initializeCam_pushButton, 'Enable','off');
    set(handles.framesTrig_editText,'Enable','off');
    set(handles.updateImageNumber_editText,'Enable','off');
    set(handles.port_editText,'Enable','off');
    set(handles.saveRaw_checkbox,'Enable','off')
    set(handles.model_staticText,'Enable','off');
    set(handles.adapter_staticText,'Enable','off');
    set(handles.format_staticText,'Enable','off');
    set(handles.port_staticText,'Enable','off');
    set(handles.path_staticText,'Enable','off');
    set(handles.nextImage_staticText,'Enable','off');
    set(handles.configFramesStack_staticText,'Enable','off');
    set(handles.unlock_toggleButton,'Value',0);
    set(findall(handles.reduce_uiButtonGroup, '-property','enable'),...
        'enable','off')
    set(handles.configData_staticText,'Enable','off');

    % Sets all the items in acquisition into on
    set(findall(handles.acquisition_uiPanel, '-property', 'enable'),...
        'enable', 'on')
% Error handling in case we cannot connect
catch
    warningMessage = sprintf('Problem connecting to the FLIR TAU 2 Camera.');
    uiwait(warndlg(warningMessage));

    delete(gcf);
    return;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
