% Copyright¨Ï2019 epsilon-d All rights reserved.
% This program is program to find approximate value pi.

clearvars
close all
clc

format long

a = 0;
b = 1;
k = 10000;
x = a;
j = 0;

Mid = 0;
Tra = 0;
Sim = 0;

for k = 10:150
    
    Mid = 0;
    Tra = 0;
    Sim = 0;
    
    h=1/k;
    
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
    Mid_Value = h*Mid;
    Tra_Value = Tra;
    Sim_Value = (h/6)*Sim;
    
    err_Mid = pi-Mid_Value;
    err_Tra = pi-Tra_Value;
    err_Sim = pi-Sim_Value;
    % ------------------------------------------
    %disp('error by midpoint rule is')
    %disp(err_Mid)
    %disp('error by trapezoid rule is')
    %disp(err_Tra)
    %disp('error by Simpson''s rule is')
    %disp(err_Sim)
    %disp('--------------------------')

    hold on
    plot(h,err_Mid,'ro',h,err_Tra,'bs',h,err_Sim,'g*')
    axis([0.01 0.1 -0.001 0.001])
    xlabel('h')
    ylabel('error')
    legend('error of Midpoint','error of Trapezoid', 'error of Simpson')
end

% ------------------------------------------
% function
function y = fnc_formula(x)
y = 4/(1+x^2);
end