function varargout = RBFfunction(varargin)

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RBFfunction_OpeningFcn, ...
                   'gui_OutputFcn',  @RBFfunction_OutputFcn, ...
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

% --- Executes just before RBFfunction is made visible.
function RBFfunction_OpeningFcn(hObject, eventdata, handles, varargin)

% Choose default command line output for RBFfunction
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = RBFfunction_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


% --- Executes on button press in sin.
function sin_Callback(hObject, eventdata, handles)

x = -pi/2:0.01:pi/2;
%x = -3*pi/2:0.01:3*pi/2;
y = sin(x);  % each column will be a sample

MN=20;
DF=1;
net = newrb(x,y,0,1,MN,DF);

xtest = -pi:0.1:pi;
input = -pi:0.01:pi;
% xtest = -2*pi:0.1:2*pi;
% input = -2*pi:0.01:2*pi;
plot(input,sin(input),'b-','MarkerSize',12);
hold on
plot(xtest,sim(net,xtest),'r+','MarkerSize',8);
% plot(xtest,net(xtest),'r+','MarkerSize',8); % matlab after 2010
xlabel('Xtest value');
ylabel('Ytest value');
legend('Desired output','Approximated curve',2);


% --- Executes on button press in Cos.
function Cos_Callback(hObject, eventdata, handles)

x = -pi/2:0.01:pi/2;
% x = -3*pi/2:0.01:3*pi/2;
y = cos(x);  % each column will be a sample

MN=30;
DF=1;
net = newrb(x,y,0,1,MN,DF);

xtest = -pi:0.1:pi;
input = -pi:0.01:pi;
% xtest = -2*pi:0.1:2*pi;
% input = -2*pi:0.01:2*pi;
plot(input,cos(input),'b-','MarkerSize',12);
hold on
plot(xtest,sim(net,xtest),'r+','MarkerSize',8); % matlab 2009
% plot(xtest,net(xtest),'r+','MarkerSize',8); % matlab after 2010
xlabel('Xtest value');
ylabel('Ytest value');
legend('Desired output','Approximated curve',2);

% --- Executes on button press in Exit.
function pushbutton4_Callback(hObject, eventdata, handles)
close all;


% --- Executes on button press in Discription.
function comment_Callback(hObject, eventdata, handles)
figure;
imshow(strcat(cd,'\1.jpg'));
