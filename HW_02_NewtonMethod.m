%% Newton's Method
% 이 코딩은 Newton's method를 이용하여 x^3-x=0의 해의 근사값을 구하는 코딩입니다.
% copyrightⓒ 2019 All rights reserved by epsilon-d

clearvars
clc

disp('This program is that find solution of x^3 - x = 0')

% 2번 조건
prompt='Please input initial guess value.\nInitial guess value can only be number.\n';
x = input(prompt);

% 3번 조건
if isscalar(x) == 0
    warning('Please input scalar number only and restart this file.')
    return
end

% 3번 조건
if isreal(x) == 0
    warning('Please input real number only and restart this file.')
    return
end

% 1번 조건
if x == 0  |  x == -1  |  x == 1
    fprintf('Congratulations!\nThe initial value you enter is the exact solution of the equation you want to obtain.\nSo you do not need to use the Newton Method.')
    return
end

iter=0;
y=x^3-x;
yprime = 3*x^2-1;

% 3번 조건
if yprime == 0
    warning('You can not use Newton method. Because yprime equals zero.')
    return
end
    
% 5번 조건
hold on

% 4번 조건의 (1)
while abs(y) >= 0.000001

    % 반복 횟수 기록
    fprintf(['\nIteration Number is ',num2str(iter)]);

    % 5번 조건
    plot(x,y,'ko');
    
    % 6번 조건
    fprintf(['\n\nx is ',num2str(x)]);
    fprintf(['\nf(x) is ',num2str(y)]);
    
    yprime = 3*x^2-1;
    x=x-y/yprime;
    y=x^3-x;
    iter=iter+1;
    
    % 4번 조건의 (2)
    if iter > 10000
        break
    end
end
fprintf(['\nIteration Number is ',num2str(iter)]);
iter=iter+1;

% 6번 조건
fprintf(['\n\nx is ',num2str(x)]);
fprintf(['\nf(x) is ',num2str(y)]);
fprintf(['\nIteration Number is ',num2str(iter)]);

% 5번 조건
plot(x,y,'r*');

% 7번 조건
fprintf(['\n\nSolution is ',num2str(x)]);
fprintf('\n');