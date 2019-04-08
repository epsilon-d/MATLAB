clearvars
clc

x = 0;

if x <= 0
    warning('x에는 양의 정수만을 입력하십시오.')
else
    if (floor(x)==x)==0
    warning('x에는 양의 정수만을 입력하십시오.')
    end
end

z=0;
for y=2:sqrt(x)
    if (floor(x/y)==x/y)==1
        z=1;
    end
end

if z==1
    disp('소수가 아닙니다.')
else
    disp('소수입니다.')
end