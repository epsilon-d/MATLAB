% Copyright(c)2019 epsilon-d All rights reserved.
% This program is to solve homework.

clearvars
clc
close all

% Question 1
disp('Q1. Make a code using MATLAB of computing below eqations.')

% (a)
a = (35.7*64-7^3)/(45+5^2);
fprintf('Solution of (a) is %f \n',a);

% (b)
b = (cos(5*pi/6))^2 * (sin(7*pi/8))^2 + (tan((pi/6)*log(8)))/sqrt(7);
fprintf('Solution of (b) is %f \n',b);

% (c)
x = 9.6;
z = 8.1;
c = x*z^2 - ((2*z)/(3*x))^(3/5);
fprintf('Solution of (c) is %f \n',c);

% (d)
syms n
S1 = symsum(1/(n^2), n, 1, 20);
fprintf('Solution of (d) is %f \n',S1);
