classdef GlobalVar < handle
    %GlobalVar Класс переменных и констант модели DirectionFinder

    properties
        ModelName       % название модели
        SimTime         % время симуляции
        SimStep         % шаг симуляции
        MaxSteps        % количество симуляций
        MaxCount        % число измерений в симуляции
        MoveStep        % номер симуляции
        freq            % частота излучения
        wave            % длина волны излучения
        Azimuth         % азимут источника
        Elevation       % угол возвышения источника
        PhaseX          % разность фаз на оси Ox
        PhaseY          % разность фаз на оси Oy
        OutAzimuth      % измеренный азимут
        OutElevation    % измеренный угол возвышения
        OutPhaseX       % измеренная разность фаз на оси Ox
        OutPhaseY       % измеренная разность фаз на оси Oy
        Measure         % период усреднения измерений
        Impulse         % период счётных импульсов
        loss            % коэффициент потерь
        factor          % коэффициент усиления
        Lx              % расстояние между антеннами на оси Ox
        Ly              % расстояние между антеннами на оси Oy
        X0              % коодината x опорной антенны
        Y0              % коодината y опорной антенны
        Xx              % коодината x антенны на оси Ox
        Yx              % коодината y антенны на оси Ox
        Xy              % коодината x антенны на оси Oy
        Yy              % коодината y антенны на оси Oy
        ProgressBar     % окно индикатора выполнения
    end

    methods
        function this = GlobalVar
            % Инициализация класса
        end
    end
end