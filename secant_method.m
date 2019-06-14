% Copyrightⓒ2019 epsilon-d All rights reserved.
% This program is program to find solution of f(x) = x^3 + 2*x^2 - 1 using secant method.
% Suppose that we know that f(0) = -1 < 0 and f(1) = 2 > 0

clearvars
clc
close all

x = 1;
y = fnc_secant(x);

% initial value = 0, 1
p1 = 0;
p2 = 1;
p3 = 1;

while abs(fnc_secant(p3)) > 1e-6
    
    p3 = p1 - ( fnc_secant(p1)*(p2 - p1)/( fnc_secant(p2) - fnc_secant(p1) ) );

    comment_1 = 'p3 is %f\n';
    comment_2 = 'f(p3) is %f\n\n';
    fprintf(comment_1,p3)
    fprintf(comment_2,p3)
    
    if fnc_secant(p3) > 0
        p2 = p3;
    else
        p1 = p3;
    end
    
end

comment_final = 'Final solution is %f\n';
fprintf(comment_final,p3)

function y = fnc_secant(x)
y = x^3+2*x^2-1;
end
