
% Инициализация и запуск таймера
t = timer;
t.StartDelay = 5; % в сек
t.TimerFcn = @(~,~)SaveOutAndMove(GV,t);
start(t)

function SaveOutAndMove(GV,t)
    % Передача доступа к результатам симуляции   
    global out;

    % Запись результатов симуляции
    GV.OutAzimuth(:,GV.MoveStep) = out.Azimuth(2:end);
    GV.OutElevation(:,GV.MoveStep) = out.Elevation(2:end);
    GV.OutPhaseX(:,GV.MoveStep) = out.PhaseX(2:end);
    GV.OutPhaseY(:,GV.MoveStep) = out.PhaseY(2:end);

    % Переход на следующую точку траектории источника
    GV.MoveStep = GV.MoveStep + 1;
    
    % Остановка и удаление таймера
    stop(t);
    delete(t);

    if GV.MoveStep <= GV.MaxSteps
        % Перемещение источника по траектории
        GV.PhaseX(GV.MoveStep) = DiffPhase(GV.wave,GV.Azimuth(GV.MoveStep),GV.Elevation(GV.MoveStep),GV.X0,GV.Y0,GV.Xx,GV.Yx);
        GV.PhaseY(GV.MoveStep) = DiffPhase(GV.wave,GV.Azimuth(GV.MoveStep),GV.Elevation(GV.MoveStep),GV.X0,GV.Y0,GV.Xy,GV.Yy);
        
        % Отображение прогесса симуляции
        waitbar((GV.MoveStep-1)/GV.MaxSteps,GV.ProgressBar,'Modeling in progress...');

        % Запуск симуляции
        set_param(GV.ModelName,'SimulationCommand','start')
    else
        % Закрытие окна прогресса симуляции
        waitbar(1,GV.ProgressBar,'Completed');
        close(GV.ProgressBar)
    end
end
