function Initialization(const_in)

% Глобальные переменые/константы
%const_in = 20; % число входов в блок
matlabmodel = 'DinamicSystem/'; % имя модели
subsystem = 'Sub/'; % имя подсистемы

% Xsize и Ysize - размеры содаваемого элемента
% x и y - координаты начала певрого элемента
% between - расстояние между элементами

% Создание входных портов блока
Xsize = 50; Ysize = 20;
x = 10; y = 10;
between = 20;
for n = 1:const_in
    % Добавление элементов в блок
    add_block('simulink/Commonly Used Blocks/In1',strcat(matlabmodel,subsystem,'In',num2str(n)));
    % Опредление позиции элементов в блоке
    set_param(strcat(matlabmodel,subsystem,'In',num2str(n)),'position',[x,y,x+Xsize,y+Ysize]);
    % Смещение положения нового элемента
    y = y+Ysize+between;
end

% Создание усилителей сигнала
Xsize = 50; Ysize = 20;
x = 100; y = 10;
between = 20;
for n = 1:const_in
    % Добавление элементов в блок
    add_block('simulink/Commonly Used Blocks/Gain',strcat(matlabmodel,subsystem,'Gain',num2str(n)));
    % Опредление позиции элементов в блоке
    set_param(strcat(matlabmodel,subsystem,'Gain',num2str(n)),'position',[x,y,x+Xsize,y+Ysize]);
    % Определение коэффициента усиления
    set_param(strcat(matlabmodel,subsystem,'Gain',num2str(n)),'Gain',num2str(3));
    % Смещение положения нового элемента
    y = y+Ysize+between;
end

% Создание связей между входными портами и усилителями
for n = 1:const_in
    add_line(strcat(matlabmodel,subsystem),strcat('In',num2str(n),'/1'),strcat('Gain',num2str(n),'/1'));
end

% Создание выходных портов блока
Xsize = 50; Ysize = 20;
x = 300; y = 10;
between = 20;
for n = 1:const_in
    % Добавление элементов в блок
    add_block('simulink/Commonly Used Blocks/Out1',strcat(matlabmodel,subsystem,'Out',num2str(n)));
    % Опредление позиции элементов в блоке
    set_param(strcat(matlabmodel,subsystem,'Out',num2str(n)),'position',[x,y,x+Xsize,y+Ysize]);
    % Смещение положения нового элемента
    y = y+Ysize+between;
end

% Создание связей между усилителями и выходными портами 
for n = 1:const_in
    add_line(strcat(matlabmodel,subsystem),strcat('Gain',num2str(n),'/1'),strcat('Out',num2str(n),'/1'));
end

end

