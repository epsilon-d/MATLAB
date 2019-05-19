% Copyright¨Ï2019 epsilon-d All rights reserved.
% This program is program to find approximate value pi.

clearvars
close all
clc

format long

a = 0;
b = 1;

% You can change value k.
k = 1291;
x = a;
h = (b-a)/k;
j = 0;

Tra = 0;
Tra_Value = 3.1;

while abs(pi-Tra_Value)>=10^(-7)
    h = (b-a)/k;
    for j = 1:k
        x_small = a + (j-1)*h;
        x_big = a + j*h;
        % only Trapezoid rule
        Tra_1 = ((x_big-x_small)/2)*(fnc_formula(x_small)+fnc_formula(x_big));
        Tra = Tra+Tra_1;
    end
    Tra_Value = Tra;
    k = k+1;
end

% ------------------------------------------
% Composite trapezoid rule

disp('h that can compute the approximate value for pi with 6 decimal accuracy is ')
disp(Tra_Value)
disp('Then, h value at that time is ')
disp(h)
disp('Then, k value at that time is ')
disp(k-1)

% ------------------------------------------
% function
function y = fnc_formula(x)
y = 4/(1+x^2);
end