%% Newton's Method
% �� �ڵ��� Newton's method�� �̿��Ͽ� x^3-x=0�� ���� �ٻ簪�� ���ϴ� �ڵ��Դϴ�.
% copyright�� 2019 All rights reserved by epsilon-d

clearvars
clc

disp('This program is that find solution of x^3 - x = 0')

% 2�� ����
prompt='Please input initial guess value.\nInitial guess value can only be number.\n';
x = input(prompt);

% 3�� ����
if isscalar(x) == 0
    warning('Please input scalar number only and restart this file.')
    return
end

% 3�� ����
if isreal(x) == 0
    warning('Please input real number only and restart this file.')
    return
end

% 1�� ����
if x == 0  |  x == -1  |  x == 1
    fprintf('Congratulations!\nThe initial value you enter is the exact solution of the equation you want to obtain.\nSo you do not need to use the Newton Method.')
    return
end

iter=0;
y=x^3-x;
yprime = 3*x^2-1;

% 3�� ����
if yprime == 0
    warning('You can not use Newton method. Because yprime equals zero.')
    return
end
    
% 5�� ����
hold on

% 4�� ������ (1)
while abs(y) >= 0.000001

    % �ݺ� Ƚ�� ���
    fprintf(['\nIteration Number is ',num2str(iter)]);

    % 5�� ����
    plot(x,y,'ko');
    
    % 6�� ����
    fprintf(['\n\nx is ',num2str(x)]);
    fprintf(['\nf(x) is ',num2str(y)]);
    
    yprime = 3*x^2-1;
    x=x-y/yprime;
    y=x^3-x;
    iter=iter+1;
    
    % 4�� ������ (2)
    if iter > 10000
        break
    end
end
fprintf(['\nIteration Number is ',num2str(iter)]);
iter=iter+1;

% 6�� ����
fprintf(['\n\nx is ',num2str(x)]);
fprintf(['\nf(x) is ',num2str(y)]);
fprintf(['\nIteration Number is ',num2str(iter)]);

% 5�� ����
plot(x,y,'r*');

% 7�� ����
fprintf(['\n\nSolution is ',num2str(x)]);
fprintf('\n');