function varargout = Tugas5_Tauhid_Sidiq(varargin)
% Tugas5_Tauhid_Sidiq MATLAB code for Tugas5_Tauhid_Sidiq.fig
%      UNTITLED1, by itself, creates a new Tugas5_Tauhid_Sidiq or raises the existing
%      singleton*.
%
%      H = Tugas5_Tauhid_Sidiq returns the handle to a new Tugas5_Tauhid_Sidiq or the handle to
%      the existing singleton*.
%
%      Tugas5_Tauhid_Sidiq('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Tugas5_Tauhid_Sidiq.M with the given input arguments.
%
%      Tugas5_Tauhid_Sidiq('Property','Value',...) creates a new Tugas5_Tauhid_Sidiq or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled1

% Last Modified by GUIDE v2.5 03-Oct-2021 22:28:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled1_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled1_OutputFcn, ...
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


% --- Executes just before untitled1 is made visible.
function untitled1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled1 (see VARARGIN)

% Choose default command line output for untitled1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = imread('ynwa.png');
b = rgb2gray(a);
c = imresize(b,[354 280]);
axes(handles.axes1)
imshow(c);

d = imread('Londons.jpg');
e = rgb2gray(d);
f = imresize(e,[354 280]);
axes(handles.axes2)
imshow(f);

g = imadd(c,f);
axes(handles.axes3)
imshow(g);

h = imsubtract(c,f);
axes(handles.axes4)
imshow(h);

i = immultiply(c,f);
axes(handles.axes5)
imshow(i);

j = imdivide(c,f);
axes(handles.axes6)
imshow(j);

Bc = im2bw(c, 0.3);
Bf = im2bw(f, 0.3);
l = and(Bc, Bf);
axes(handles.axes7)
imshow(l);

Bc = im2bw(c, 0.3);
Bf = im2bw(f, 0.3);
n = xor(Bc, Bf);
axes(handles.axes8)
imshow(n);

o = not(Bc);
axes(handles.axes9)
imshow(o);


[m,n]=size(b);
skala=1.5;

for x=2:m
    for y=2:n
        hasil3(round (skala*(x-1)-1),round(skala*(y-1)))=b(x-1,y-1);
    end
end
axes(handles.axes10)
imshow(b);

% --- Executes on button press in gambar9.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to gambar9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)