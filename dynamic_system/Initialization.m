function Initialization(const_in)

% ���������� ���������/���������
%const_in = 20; % ����� ������ � ����
matlabmodel = 'DinamicSystem/'; % ��� ������
subsystem = 'Sub/'; % ��� ����������

% Xsize � Ysize - ������� ����������� ��������
% x � y - ���������� ������ ������� ��������
% between - ���������� ����� ����������

% �������� ������� ������ �����
Xsize = 50; Ysize = 20;
x = 10; y = 10;
between = 20;
for n = 1:const_in
    % ���������� ��������� � ����
    add_block('simulink/Commonly Used Blocks/In1',strcat(matlabmodel,subsystem,'In',num2str(n)));
    % ���������� ������� ��������� � �����
    set_param(strcat(matlabmodel,subsystem,'In',num2str(n)),'position',[x,y,x+Xsize,y+Ysize]);
    % �������� ��������� ������ ��������
    y = y+Ysize+between;
end

% �������� ���������� �������
Xsize = 50; Ysize = 20;
x = 100; y = 10;
between = 20;
for n = 1:const_in
    % ���������� ��������� � ����
    add_block('simulink/Commonly Used Blocks/Gain',strcat(matlabmodel,subsystem,'Gain',num2str(n)));
    % ���������� ������� ��������� � �����
    set_param(strcat(matlabmodel,subsystem,'Gain',num2str(n)),'position',[x,y,x+Xsize,y+Ysize]);
    % ����������� ������������ ��������
    set_param(strcat(matlabmodel,subsystem,'Gain',num2str(n)),'Gain',num2str(3));
    % �������� ��������� ������ ��������
    y = y+Ysize+between;
end

% �������� ������ ����� �������� ������� � �����������
for n = 1:const_in
    add_line(strcat(matlabmodel,subsystem),strcat('In',num2str(n),'/1'),strcat('Gain',num2str(n),'/1'));
end

% �������� �������� ������ �����
Xsize = 50; Ysize = 20;
x = 300; y = 10;
between = 20;
for n = 1:const_in
    % ���������� ��������� � ����
    add_block('simulink/Commonly Used Blocks/Out1',strcat(matlabmodel,subsystem,'Out',num2str(n)));
    % ���������� ������� ��������� � �����
    set_param(strcat(matlabmodel,subsystem,'Out',num2str(n)),'position',[x,y,x+Xsize,y+Ysize]);
    % �������� ��������� ������ ��������
    y = y+Ysize+between;
end

% �������� ������ ����� ����������� � ��������� ������� 
for n = 1:const_in
    add_line(strcat(matlabmodel,subsystem),strcat('Gain',num2str(n),'/1'),strcat('Out',num2str(n),'/1'));
end

end

