% Copyright(c)2019 epsilon-d All rights reserved.
% This program is to solve homework.

clearvars
clc
close all

x1 = 1;
x2 = 1;

i;

hold on

fprintf('1항의 값은 %d\n', x1)
fprintf('2항의 값은 %d\n', x2)

for i = 1:10
    if x1 <= x2
        x1 = x1 + x2;
        fprintf('%d항의 값은 %d\n', i+2, x1)
        plot(i,x1,'k*')
    else
        x2 = x1 + x2;
        fprintf('%d항의 값은 %d\n', i+2, x2)
        plot(i,x2,'k*')
    end
end
