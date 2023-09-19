function [AzimuthMSD,ElevationMSD] = PostProcessing(GV)

if size(GV.Azimuth,1) > size(GV.Azimuth,2)
    Azimuth = GV.Azimuth';
else
    Azimuth = GV.Azimuth;
end

if size(GV.Elevation,1) > size(GV.Elevation,2)
    Elevation = GV.Elevation';
else
    Elevation = GV.Elevation;
end

OutAzimuth = GV.OutAzimuth(GV.MaxCount,:);
OutElevation = GV.OutElevation(GV.MaxCount,:);

AzimuthMSD = sqrt(sum((Azimuth-OutAzimuth).^2)/(GV.MaxSteps-1));
ElevationMSD = sqrt(sum((Elevation-OutElevation).^2)/(GV.MaxSteps-1));

subplot(2,1,1)
plot(Azimuth,'black-','LineWidth',2)
hold on
plot(OutAzimuth,'blue--','LineWidth',3)

subplot(2,1,2)
plot(Elevation,'black-','LineWidth',2)
hold on
plot(OutElevation,'blue--','LineWidth',3)

end