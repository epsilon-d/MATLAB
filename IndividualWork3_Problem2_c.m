% Copyright¨Ï2019 epsilon-d All rights reserved.
% This program is program to find approximate value pi.

clearvars
close all
clc

format long

a = 0;
b = 1;
% You can change value k.
k = 100;
x = a;
h = (b-a)/k;
j = 0;

Mid = 0;
Tra = 0;
Sim = 0;

for j = 1:k
    % ------------------------------------------
    % global
    x_small = a + (j-1)*h;
    x_big = a + j*h;
    % ------------------------------------------
    % only Midpoint rule
    Mid_1 = fnc_formula((x_small+x_big)/2);
    Mid = Mid+Mid_1;
    % ------------------------------------------
    % only Trapezoid rule
    Tra_1 = ((x_big-x_small)/2)*(fnc_formula(x_small)+fnc_formula(x_big));
    Tra = Tra+Tra_1;
    % ------------------------------------------
    % only Simpson's rule
    x_0 = a+(2*j-2)*(h/2);
    x_1 = a+(2*j-1)*(h/2);
    x_2 = a+(2*j)*(h/2);
    Sim_1 = fnc_formula(x_0)+4*fnc_formula(x_1)+fnc_formula(x_2);
    Sim = Sim + Sim_1;
end

disp('If h is 0.01, then')
% ------------------------------------------
% Composite midpoint rule
Mid_Value = h*Mid;
disp('approximate value of composite midpoint rule is ')
disp(Mid_Value)

% ------------------------------------------
% Composite trapezoid rule
Tra_Value = Tra;
disp('approximate value of composite trapezoid rule is ')
disp(Tra_Value)

% ------------------------------------------
% Composite Simpson's rule
Sim_Value = (h/6)*Sim;
disp('approximate value of composite Simpson''s rule is ')
disp(Sim_Value)

% ------------------------------------------
% function
function y = fnc_formula(x)
y = 4/(1+x^2);
end