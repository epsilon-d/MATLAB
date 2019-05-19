% Copyright¨Ï2019 epsilon-d All rights reserved.
% This program is program to find error by h

clearvars
close all
clc

format long

h=0.00001;

% forward difference
fd=(tan((pi/4)+h)-tan(pi/4))/h;

% backward difference
bd=(tan((pi/4))-tan((pi/4)-h))/h;

% centered difference
cd=(tan((pi/4)+h)-tan((pi/4)-h))/(h*2);

disp('If h=0.00001')
disp('forward difference is')
disp(fd)
disp('backward difference is')
disp(bd)
disp('centered difference is')
disp(cd)
disp('--------------------------------------')