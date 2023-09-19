
% Запуск симуляции
set_param('ModelName','SimulationCommand','start')

% Выполнить моделирование на один шаг симуляции
set_param('ModelName','SimulationCommand','step')

% Записать данные о симуляции, в том числе и момент времени симуляции
set_param('ModelName','SimulationCommand','WriteDataLogs')

% Получить вектор временных шагов симуляции
out.tout;
% Получить последний момент времени симуляции
out.tout(end)
% Получить значение следующего момента времени симуляции, с величиной в
% один шаг симуляции
t = get_param('ModelName', 'SimulationTime');

% Узнать статус симуляции
get_param('ModelName','SimulationStatus')

% Поставить симуляцию на паузу
set_param('ModelName','SimulationCommand','pause')

% Продолжить выполнение симуляции
set_param('ModelName','SimulationCommand','continue')

% Полная остановка (завершение) симуляции
set_param('ModelName','SimulationCommand','stop')

% Обновить данные и параметры симуляции
set_param('ModelName','SimulationCommand','update')

% Установка или изменение параметров модуля
set_param('ModelName/Sine Wave','Frequency', num2str(10));

% Проверка симуляции на остановку и продолжение симуляции
% с помощью таймера с постоянным периодом запуска
t = timer;
t.Period = 2; % в сек
t.TasksToExecute = 100; % число вызовов функции, то есть вызовется максимум 100 раз
t.ExecutionMode = 'fixedRate'; % фиксированный период вызова функции
t.TimerFcn = @(~,~)Continue(t);
start(t)

function Continue(t)
    if isequal(get_param('ModelName','SimulationStatus'),'paused')
        stop(t);
        delete(t);
        % Задержка для выполнения команды продолжения симуляции
        t = timer('TimerFcn',@(~,~)set_param('ModelName','SimulationCommand','continue'));
        t.StartDelay = 2;
        start(t);
    end
    % Остановка таймера по окончанию симуляции
    if isequal(get_param('ModelName','SimulationStatus'),'stopped')
        stop(t);
        delete(t);
    end
end
