function Delete(const_in)

% ���������� ���������/���������
%const_in = 20; % ����� ������ � ����
matlabmodel = 'DinamicSystem/'; % ��� ������
subsystem = 'Sub/'; % ��� ����������

% �������� ������
for n = 1:const_in
    delete_line(strcat(matlabmodel,subsystem),strcat('In',num2str(n),'/1'),strcat('Gain',num2str(n),'/1'));
end

% �������� ������� ������ �����
for n = 1:const_in
    delete_block(strcat(matlabmodel,subsystem,'In',num2str(n)));
end

% �������� ������
for n = 1:const_in
    delete_line(strcat(matlabmodel,subsystem),strcat('Gain',num2str(n),'/1'),strcat('Out',num2str(n),'/1'));
end

% �������� ����������
for n = 1:const_in
    delete_block(strcat(matlabmodel,subsystem,'Gain',num2str(n)));
end

% �������� �������� ������ �����
for n = 1:const_in
    delete_block(strcat(matlabmodel,subsystem,'Out',num2str(n)));
end

end

