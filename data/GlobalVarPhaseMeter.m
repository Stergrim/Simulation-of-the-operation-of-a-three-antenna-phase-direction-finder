classdef GlobalVarPhaseMeter < handle
    %GlobalVarPhaseMeter Класс переменных и констант модели DigitalPhaseMeter

    properties
        ModelName       % название модели
        SimTime         % время симуляции
        SimStep         % шаг симуляции
        MaxSteps        % количество симуляций
        MaxCount        % число измерений в симуляции
        MoveStep        % номер симуляции
        freq            % частота излучения
        DiffPhaseRad    % разность фаз в радианах
        DiffPhase       % разность фаз в градусах
        OutDiffPhase    % измеренная разность фаз
        Measure         % период усреднения измерений
        Impulse         % период счётных импульсов
        ProgressBar     % окно индикатора выполнения
    end

    methods
        function this = GlobalVarPhaseMeter
            % Инициализация класса
        end
    end
end