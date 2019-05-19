% Copyright¨Ï2019 epsilon-d All rights reserved.
% This program is program to find approximate value pi.

clearvars
close all
clc

format long

a = 0;
b = 1;

% You can change value k.
k = 5;
x = a;
h = (b-a)/k;
j = 0;

Sim = 0;
Sim_Value = 3.1;

while abs(pi-Sim_Value)>=10^(-7)
    h = (b-a)/k;
    for j = 1:k
        % ------------------------------------------
        % only Simpson's rule
        x_0 = a+(2*j-2)*(h/2);
        x_1 = a+(2*j-1)*(h/2);
        x_2 = a+(2*j)*(h/2);
        Sim_1 = fnc_formula(x_0)+4*fnc_formula(x_1)+fnc_formula(x_2);
        Sim = Sim + Sim_1;
    end
    Sim_Value = (h/6)*Sim;
    k = k+1;
end

% ------------------------------------------
% Composite Simpson's rule

disp('h that can compute the approximate value for pi with 6 decimal accuracy is ')
disp(Sim_Value)
disp('Then, the h value at that time is ')
disp(h)
disp('Then, k value at that time is ')
disp(k-1)

% ------------------------------------------
% function
function y = fnc_formula(x)
y = 4/(1+x^2);
end