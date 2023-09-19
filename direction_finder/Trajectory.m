function [Azimuth,Elevation,MaxSteps] = Trajectory

% Опредление размаха движения истчоника излучения (град)
AzimuthMin = -90;
AzimuthMax = 90;
ElevationMin = 20;
ElevationMax = 70;

% Задача траектории в виде наклонной линии
MaxSteps = 30;
x = 1:MaxSteps;
y = 1.0*x+2.0;

% Нормализация траектории к размаху в градусах
MaxX = max(x);
MinX = min(x);

if MinX ~= MaxX
    AzimuthCoeff = (AzimuthMin-AzimuthMax)/(MinX-MaxX);
    AzimuthConst = AzimuthMin - AzimuthCoeff*MinX;
else
    AzimuthCoeff = 0;
    AzimuthConst = (AzimuthMin+AzimuthMax)/2;
end

MaxY = max(y);
MinY = min(y);

if MinY ~= MaxY
    ElevationCoeff = (ElevationMin-ElevationMax)/(MinY-MaxY);
    ElevationConst = ElevationMin - ElevationCoeff*MinY;
else
    ElevationCoeff = 0;
    ElevationConst = (ElevationMin+ElevationMax)/2;
end

Azimuth = x*AzimuthCoeff+AzimuthConst;
Elevation = y*ElevationCoeff+ElevationConst;

end