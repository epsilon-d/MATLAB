% Copyright¨Ï2019 epsilon-d All rights reserved.
% This program is program to find approximate value (pi)/4.

clearvars
close all
clc

format long

% You can change value n.
n = 100;
sum = 0;
k = 0;

for k = 0:n
    a = (-1)^k/(2*k+1);
    sum = sum + a;
end

disp(sum)