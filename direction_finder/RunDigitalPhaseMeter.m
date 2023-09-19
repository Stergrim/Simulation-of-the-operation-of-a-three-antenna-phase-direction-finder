
clc
clear all

% Опредление результата симуляции в область глобальной видимости
global out;

% Инициализация класса переменных и констант модели
GVPM = GlobalVarPhaseMeter;

% Частота источника излучения (Гц)
GVPM.freq = 433*10^(6);

% Время моделирования в одном положении источника (сек)
GVPM.SimTime = 50/GVPM.freq;
% Шаг моделирования (сек)
GVPM.SimStep = (1/1000)*(1/GVPM.freq);
% Текущий шаг моделирования
GVPM.MoveStep = 1;

% Опредление вектора изменения фазы (град)
GVPM.DiffPhase = -180:0.5:180;

% Опредление вектора изменения фазы (рад)
GVPM.DiffPhaseRad = GVPM.DiffPhase*(pi/180);

% Опредление числа изменений фазы
GVPM.MaxSteps = size(GVPM.DiffPhase,2);

% Период усреднения результатов измерений (сек)
GVPM.Measure = 10/GVPM.freq;
% Период счётных импульсов измериетля разности фаз (сек)
GVPM.Impulse = 1*10^(-12);

% Число измрений разности фаз при одном значении фазы
GVPM.MaxCount = floor(GVPM.SimTime/GVPM.Measure);

% Инициализация массивов для записи результатов симуляции
GVPM.OutDiffPhase = zeros(GVPM.MaxCount,GVPM.MaxSteps);

% Название модели
GVPM.ModelName = 'DigitalPhaseMeter';

% Запуск окна прогресса симуляции
GVPM.ProgressBar = waitbar(0,'Modeling in progress...');

% Запуск симуляции
set_param(GVPM.ModelName,'SimulationCommand','start')
