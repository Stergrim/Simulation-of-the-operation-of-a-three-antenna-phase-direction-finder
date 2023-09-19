function Delete(const_in)

% Глобальные переменые/константы
%const_in = 20; % число входов в блок
matlabmodel = 'DinamicSystem/'; % имя модели
subsystem = 'Sub/'; % имя подсистемы

% Удаление связей
for n = 1:const_in
    delete_line(strcat(matlabmodel,subsystem),strcat('In',num2str(n),'/1'),strcat('Gain',num2str(n),'/1'));
end

% Удаление входных портов блока
for n = 1:const_in
    delete_block(strcat(matlabmodel,subsystem,'In',num2str(n)));
end

% Удаление связей
for n = 1:const_in
    delete_line(strcat(matlabmodel,subsystem),strcat('Gain',num2str(n),'/1'),strcat('Out',num2str(n),'/1'));
end

% Удаление усилителей
for n = 1:const_in
    delete_block(strcat(matlabmodel,subsystem,'Gain',num2str(n)));
end

% Удаление выходных портов блока
for n = 1:const_in
    delete_block(strcat(matlabmodel,subsystem,'Out',num2str(n)));
end

end

