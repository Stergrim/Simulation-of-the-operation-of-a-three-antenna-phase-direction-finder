function PhaseShift = DiffPhase(wave,azimuth,elevation,x0,y0,x,y)

CosX = cos((pi/180)*elevation)*cos((pi/180)*azimuth);
CosY = cos((pi/180)*elevation)*sin((pi/180)*azimuth);

PhaseShift = 2*pi/(wave)*((x0-x)*CosX+(y0-y)*CosY)*180/pi;
end
