clearvars
clc

x = 0;

if x <= 0
    warning('x���� ���� �������� �Է��Ͻʽÿ�.')
else
    if (floor(x)==x)==0
    warning('x���� ���� �������� �Է��Ͻʽÿ�.')
    end
end

z=0;
for y=2:sqrt(x)
    if (floor(x/y)==x/y)==1
        z=1;
    end
end

if z==1
    disp('�Ҽ��� �ƴմϴ�.')
else
    disp('�Ҽ��Դϴ�.')
end