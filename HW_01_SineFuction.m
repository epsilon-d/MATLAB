clearvars
clc

x = pi/4;
N = 50;

if N < 0
    warning('N에는 0 또는 양의 정수만을 입력하십시오.')
else
    if (floor(N)==N)==0
    warning('N에는 0 또는 양의 정수만을 입력하십시오.')
    end
end

result = 0;

for n = 0:N
    A = [(-1)^n*(x^(2*n+1))]/(prod(1:2*n+1));
    result = result+A;
end

disp(result)