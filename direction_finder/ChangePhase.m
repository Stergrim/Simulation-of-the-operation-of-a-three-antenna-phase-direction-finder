
% Инициализация и запуск таймера
t = timer;
t.StartDelay = 5; % в сек
t.TimerFcn = @(~,~)SaveOutAndChange(GVPM,t);
start(t)

function SaveOutAndChange(GVPM,t)
    % Передача доступа к результатам симуляции   
    global out;

    % Запись результатов симуляции
    GVPM.OutDiffPhase(:,GVPM.MoveStep) = out.DiffPhase(2:end);

    % Переход на следующую точку траектории источника
    GVPM.MoveStep = GVPM.MoveStep + 1;
    
    % Остановка и удаление таймера
    stop(t);
    delete(t);

    if GVPM.MoveStep <= GVPM.MaxSteps
        % Отображение прогесса симуляции
        waitbar((GVPM.MoveStep-1)/GVPM.MaxSteps,GVPM.ProgressBar,'Modeling in progress...');

        % Запуск симуляции
        set_param(GVPM.ModelName,'SimulationCommand','start')
    else
        % Закрытие окна прогресса симуляции
        waitbar(1,GVPM.ProgressBar,'Completed');
        close(GVPM.ProgressBar)
    end
end

