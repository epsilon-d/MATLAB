% Copyright¨Ï2019 epsilon-d All rights reserved.
% This program is program to find approximate value pi.

clearvars
close all
clc

format long

a = 0;
b = 1;

% You can change value k.
k = 913;
x = a;
h = (b-a)/k;
j = 0;

Mid = 0;
Mid_Value = 3.1;

while abs(pi-Mid_Value)>=10^(-7)
    h = (b-a)/k;
    for j = 1:k
        % ------------------------------------------
        % global
        x_small = a + (j-1)*h;
        x_big = a + j*h;
        % ------------------------------------------
        % only Midpoint rule
        Mid_1 = fnc_formula((x_small+x_big)/2);
        Mid = Mid+Mid_1;
    end
    Mid_Value = h*Mid;
    k = k+1;
end

% ------------------------------------------
% Composite midpoint rule

disp('h that can compute the approximate value for pi with 6 decimal accuracy is ')
disp(Mid_Value)
disp('Then, the h value at that time is ')
disp(h)
disp('Then, k value at that time is ')
disp(k-1)

% ------------------------------------------
% function
function y = fnc_formula(x)
y = 4/(1+x^2);
end