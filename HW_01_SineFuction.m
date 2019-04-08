clearvars
clc

x = pi/4;
N = 50;

if N < 0
    warning('N���� 0 �Ǵ� ���� �������� �Է��Ͻʽÿ�.')
else
    if (floor(N)==N)==0
    warning('N���� 0 �Ǵ� ���� �������� �Է��Ͻʽÿ�.')
    end
end

result = 0;

for n = 0:N
    A = [(-1)^n*(x^(2*n+1))]/(prod(1:2*n+1));
    result = result+A;
end

disp(result)