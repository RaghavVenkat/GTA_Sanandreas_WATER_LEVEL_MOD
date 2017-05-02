@echo off
echo.
echo GTA San Andreas water level customizer by edisoncarter,
echo user input mod by BlueFusion.
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo https://gaming.youtube.com/watch?v=uQZk2PipAIE Tutorial by RaghavVenkat
echo http://www.logicbricks.in
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo Generates WATER.DAT and WATER1.DAT.
echo Be sure to backup your original WATER.DAT and WATER1.DAT files first!
echo.
pause
cls

echo Water level in meters
echo.
echo     0.0 = normal
echo     6.0 = just enough to fill the flood canals in LS
echo    10.0 = 1ft water in Las Venturas
echo    13.0 = 2ft water in Grove Street
echo    18.0 = water level at rooftops in Grove Street
echo  1015.5 = water in CJ's house
echo.
echo 	Type water level, enter, ctrl+z then enter.
FOR /F "tokens=*" %%A IN ('TYPE CON') DO SET INPUT=%%A
set level=%INPUT%
cls

rem Current movement
rem   controls visual movement of the water on the surface, but CJ isn't pushed by the current.
set currentx=0
set currenty=0

echo Wave size in meters
echo.
echo    0.0 = perfectly flat
echo    0.2 = typical waves
echo    1.0 = largest waves normally used in the game
echo    2.0 = about the biggest that's practical without your boat getting
echo		capsized all the time
echo    4.0 = huge waves
echo.
echo 	Type wave size, enter, ctrl+z then enter.
FOR /F "tokens=*" %%A IN ('TYPE CON') DO SET INPUT=%%A
set wavesize=%INPUT%
cls

rem Wave tallness
rem   can produce waves that are tall and narrow.
set wavetallness=0

echo.
echo Ready to write water level as %level% and wave size as %wavesize%
echo This okay? Type y for yes or n for no, then enter, ctrl+z, enter
echo.
FOR /F "tokens=*" %%A IN ('TYPE CON') DO SET INPUT=%%A
cls
if "%INPUT%" == "y" goto continue
if "%INPUT%" NEQ "y" goto exit

:continue

echo.
echo	 WARNING!! You are about to write changes to essential data files
echo 	that CANNOT BE REVERSED!!!
echo 	BACK UP water.dat AND water1.dat BEFORE CONTINUING!
echo.
pause
cls

set a=%level%
set b=%currentx%
set c=%currenty%
set d=%wavesize%
set e=%wavetallness%
set f=1
echo processed >water.dat
echo -2998 -2998 %a% %b% %c% %d% %e%   -2500 -2998 %a% %b% %c% %d% %e%   -2998 -2500 %a% %b% %c% %d% %e%   -2500 -2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2998 -2500 %a% %b% %c% %d% %e%   -2500 -2500 %a% %b% %c% %d% %e%   -2998 -2000 %a% %b% %c% %d% %e%   -2500 -2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2998 -2000 %a% %b% %c% %d% %e%   -2500 -2000 %a% %b% %c% %d% %e%   -2998 -1500 %a% %b% %c% %d% %e%   -2500 -1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2998 -1500 %a% %b% %c% %d% %e%   -2500 -1500 %a% %b% %c% %d% %e%   -2998 -1000 %a% %b% %c% %d% %e%   -2500 -1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2998 -1000 %a% %b% %c% %d% %e%   -2500 -1000 %a% %b% %c% %d% %e%   -2998  -500 %a% %b% %c% %d% %e%   -2500  -500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2998  -500 %a% %b% %c% %d% %e%   -2500  -500 %a% %b% %c% %d% %e%   -2998     0 %a% %b% %c% %d% %e%   -2500     0 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2998     0 %a% %b% %c% %d% %e%   -2500     0 %a% %b% %c% %d% %e%   -2998   500 %a% %b% %c% %d% %e%   -2500   500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2998   500 %a% %b% %c% %d% %e%   -2500   500 %a% %b% %c% %d% %e%   -2998  1000 %a% %b% %c% %d% %e%   -2500  1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2998  1000 %a% %b% %c% %d% %e%   -2500  1000 %a% %b% %c% %d% %e%   -2998  1500 %a% %b% %c% %d% %e%   -2500  1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2998  1500 %a% %b% %c% %d% %e%   -2500  1500 %a% %b% %c% %d% %e%   -2998  2000 %a% %b% %c% %d% %e%   -2500  2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2998  2000 %a% %b% %c% %d% %e%   -2500  2000 %a% %b% %c% %d% %e%   -2998  2500 %a% %b% %c% %d% %e%   -2500  2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2998  2500 %a% %b% %c% %d% %e%   -2500  2500 %a% %b% %c% %d% %e%   -2998  2998 %a% %b% %c% %d% %e%   -2500  2998 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2500 -2998 %a% %b% %c% %d% %e%   -2000 -2998 %a% %b% %c% %d% %e%   -2500 -2500 %a% %b% %c% %d% %e%   -2000 -2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2500 -2500 %a% %b% %c% %d% %e%   -2000 -2500 %a% %b% %c% %d% %e%   -2500 -2000 %a% %b% %c% %d% %e%   -2000 -2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2500 -2000 %a% %b% %c% %d% %e%   -2000 -2000 %a% %b% %c% %d% %e%   -2500 -1500 %a% %b% %c% %d% %e%   -2000 -1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2500 -1500 %a% %b% %c% %d% %e%   -2000 -1500 %a% %b% %c% %d% %e%   -2500 -1000 %a% %b% %c% %d% %e%   -2000 -1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2500 -1000 %a% %b% %c% %d% %e%   -2000 -1000 %a% %b% %c% %d% %e%   -2500  -500 %a% %b% %c% %d% %e%   -2000  -500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2500  -500 %a% %b% %c% %d% %e%   -2000  -500 %a% %b% %c% %d% %e%   -2500     0 %a% %b% %c% %d% %e%   -2000     0 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2500     0 %a% %b% %c% %d% %e%   -2000     0 %a% %b% %c% %d% %e%   -2500   500 %a% %b% %c% %d% %e%   -2000   500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2500   500 %a% %b% %c% %d% %e%   -2000   500 %a% %b% %c% %d% %e%   -2500  1000 %a% %b% %c% %d% %e%   -2000  1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2500  1000 %a% %b% %c% %d% %e%   -2000  1000 %a% %b% %c% %d% %e%   -2500  1500 %a% %b% %c% %d% %e%   -2000  1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2500  1500 %a% %b% %c% %d% %e%   -2000  1500 %a% %b% %c% %d% %e%   -2500  2000 %a% %b% %c% %d% %e%   -2000  2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2500  2000 %a% %b% %c% %d% %e%   -2000  2000 %a% %b% %c% %d% %e%   -2500  2500 %a% %b% %c% %d% %e%   -2000  2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2500  2500 %a% %b% %c% %d% %e%   -2000  2500 %a% %b% %c% %d% %e%   -2500  2998 %a% %b% %c% %d% %e%   -2000  2998 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2000 -2998 %a% %b% %c% %d% %e%   -1500 -2998 %a% %b% %c% %d% %e%   -2000 -2500 %a% %b% %c% %d% %e%   -1500 -2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2000 -2500 %a% %b% %c% %d% %e%   -1500 -2500 %a% %b% %c% %d% %e%   -2000 -2000 %a% %b% %c% %d% %e%   -1500 -2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2000 -2000 %a% %b% %c% %d% %e%   -1500 -2000 %a% %b% %c% %d% %e%   -2000 -1500 %a% %b% %c% %d% %e%   -1500 -1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2000 -1500 %a% %b% %c% %d% %e%   -1500 -1500 %a% %b% %c% %d% %e%   -2000 -1000 %a% %b% %c% %d% %e%   -1500 -1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2000 -1000 %a% %b% %c% %d% %e%   -1500 -1000 %a% %b% %c% %d% %e%   -2000  -500 %a% %b% %c% %d% %e%   -1500  -500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2000  -500 %a% %b% %c% %d% %e%   -1500  -500 %a% %b% %c% %d% %e%   -2000     0 %a% %b% %c% %d% %e%   -1500     0 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2000     0 %a% %b% %c% %d% %e%   -1500     0 %a% %b% %c% %d% %e%   -2000   500 %a% %b% %c% %d% %e%   -1500   500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2000   500 %a% %b% %c% %d% %e%   -1500   500 %a% %b% %c% %d% %e%   -2000  1000 %a% %b% %c% %d% %e%   -1500  1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2000  1000 %a% %b% %c% %d% %e%   -1500  1000 %a% %b% %c% %d% %e%   -2000  1500 %a% %b% %c% %d% %e%   -1500  1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2000  1500 %a% %b% %c% %d% %e%   -1500  1500 %a% %b% %c% %d% %e%   -2000  2000 %a% %b% %c% %d% %e%   -1500  2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2000  2000 %a% %b% %c% %d% %e%   -1500  2000 %a% %b% %c% %d% %e%   -2000  2500 %a% %b% %c% %d% %e%   -1500  2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -2000  2500 %a% %b% %c% %d% %e%   -1500  2500 %a% %b% %c% %d% %e%   -2000  2998 %a% %b% %c% %d% %e%   -1500  2998 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1500 -2998 %a% %b% %c% %d% %e%   -1000 -2998 %a% %b% %c% %d% %e%   -1500 -2500 %a% %b% %c% %d% %e%   -1000 -2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1500 -2500 %a% %b% %c% %d% %e%   -1000 -2500 %a% %b% %c% %d% %e%   -1500 -2000 %a% %b% %c% %d% %e%   -1000 -2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1500 -2000 %a% %b% %c% %d% %e%   -1000 -2000 %a% %b% %c% %d% %e%   -1500 -1500 %a% %b% %c% %d% %e%   -1000 -1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1500 -1500 %a% %b% %c% %d% %e%   -1000 -1500 %a% %b% %c% %d% %e%   -1500 -1000 %a% %b% %c% %d% %e%   -1000 -1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1500 -1000 %a% %b% %c% %d% %e%   -1000 -1000 %a% %b% %c% %d% %e%   -1500  -500 %a% %b% %c% %d% %e%   -1000  -500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1500  -500 %a% %b% %c% %d% %e%   -1000  -500 %a% %b% %c% %d% %e%   -1500     0 %a% %b% %c% %d% %e%   -1000     0 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1500     0 %a% %b% %c% %d% %e%   -1000     0 %a% %b% %c% %d% %e%   -1500   500 %a% %b% %c% %d% %e%   -1000   500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1500   500 %a% %b% %c% %d% %e%   -1000   500 %a% %b% %c% %d% %e%   -1500  1000 %a% %b% %c% %d% %e%   -1000  1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1500  1000 %a% %b% %c% %d% %e%   -1000  1000 %a% %b% %c% %d% %e%   -1500  1500 %a% %b% %c% %d% %e%   -1000  1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1500  1500 %a% %b% %c% %d% %e%   -1000  1500 %a% %b% %c% %d% %e%   -1500  2000 %a% %b% %c% %d% %e%   -1000  2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1500  2000 %a% %b% %c% %d% %e%   -1000  2000 %a% %b% %c% %d% %e%   -1500  2500 %a% %b% %c% %d% %e%   -1000  2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1500  2500 %a% %b% %c% %d% %e%   -1000  2500 %a% %b% %c% %d% %e%   -1500  2998 %a% %b% %c% %d% %e%   -1000  2998 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1000 -2998 %a% %b% %c% %d% %e%    -500 -2998 %a% %b% %c% %d% %e%   -1000 -2500 %a% %b% %c% %d% %e%    -500 -2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1000 -2500 %a% %b% %c% %d% %e%    -500 -2500 %a% %b% %c% %d% %e%   -1000 -2000 %a% %b% %c% %d% %e%    -500 -2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1000 -2000 %a% %b% %c% %d% %e%    -500 -2000 %a% %b% %c% %d% %e%   -1000 -1500 %a% %b% %c% %d% %e%    -500 -1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1000 -1500 %a% %b% %c% %d% %e%    -500 -1500 %a% %b% %c% %d% %e%   -1000 -1000 %a% %b% %c% %d% %e%    -500 -1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1000 -1000 %a% %b% %c% %d% %e%    -500 -1000 %a% %b% %c% %d% %e%   -1000  -500 %a% %b% %c% %d% %e%    -500  -500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1000  -500 %a% %b% %c% %d% %e%    -500  -500 %a% %b% %c% %d% %e%   -1000     0 %a% %b% %c% %d% %e%    -500     0 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1000     0 %a% %b% %c% %d% %e%    -500     0 %a% %b% %c% %d% %e%   -1000   500 %a% %b% %c% %d% %e%    -500   500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1000   500 %a% %b% %c% %d% %e%    -500   500 %a% %b% %c% %d% %e%   -1000  1000 %a% %b% %c% %d% %e%    -500  1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1000  1000 %a% %b% %c% %d% %e%    -500  1000 %a% %b% %c% %d% %e%   -1000  1500 %a% %b% %c% %d% %e%    -500  1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1000  1500 %a% %b% %c% %d% %e%    -500  1500 %a% %b% %c% %d% %e%   -1000  2000 %a% %b% %c% %d% %e%    -500  2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1000  2000 %a% %b% %c% %d% %e%    -500  2000 %a% %b% %c% %d% %e%   -1000  2500 %a% %b% %c% %d% %e%    -500  2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo -1000  2500 %a% %b% %c% %d% %e%    -500  2500 %a% %b% %c% %d% %e%   -1000  2998 %a% %b% %c% %d% %e%    -500  2998 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  -500 -2998 %a% %b% %c% %d% %e%       0 -2998 %a% %b% %c% %d% %e%    -500 -2500 %a% %b% %c% %d% %e%       0 -2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  -500 -2500 %a% %b% %c% %d% %e%       0 -2500 %a% %b% %c% %d% %e%    -500 -2000 %a% %b% %c% %d% %e%       0 -2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  -500 -2000 %a% %b% %c% %d% %e%       0 -2000 %a% %b% %c% %d% %e%    -500 -1500 %a% %b% %c% %d% %e%       0 -1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  -500 -1500 %a% %b% %c% %d% %e%       0 -1500 %a% %b% %c% %d% %e%    -500 -1000 %a% %b% %c% %d% %e%       0 -1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  -500 -1000 %a% %b% %c% %d% %e%       0 -1000 %a% %b% %c% %d% %e%    -500  -500 %a% %b% %c% %d% %e%       0  -500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  -500  -500 %a% %b% %c% %d% %e%       0  -500 %a% %b% %c% %d% %e%    -500     0 %a% %b% %c% %d% %e%       0     0 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  -500     0 %a% %b% %c% %d% %e%       0     0 %a% %b% %c% %d% %e%    -500   500 %a% %b% %c% %d% %e%       0   500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  -500   500 %a% %b% %c% %d% %e%       0   500 %a% %b% %c% %d% %e%    -500  1000 %a% %b% %c% %d% %e%       0  1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  -500  1000 %a% %b% %c% %d% %e%       0  1000 %a% %b% %c% %d% %e%    -500  1500 %a% %b% %c% %d% %e%       0  1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  -500  1500 %a% %b% %c% %d% %e%       0  1500 %a% %b% %c% %d% %e%    -500  2000 %a% %b% %c% %d% %e%       0  2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  -500  2000 %a% %b% %c% %d% %e%       0  2000 %a% %b% %c% %d% %e%    -500  2500 %a% %b% %c% %d% %e%       0  2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  -500  2500 %a% %b% %c% %d% %e%       0  2500 %a% %b% %c% %d% %e%    -500  2998 %a% %b% %c% %d% %e%       0  2998 %a% %b% %c% %d% %e%  %f% >>water.dat
echo     0 -2998 %a% %b% %c% %d% %e%     500 -2998 %a% %b% %c% %d% %e%       0 -2500 %a% %b% %c% %d% %e%     500 -2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo     0 -2500 %a% %b% %c% %d% %e%     500 -2500 %a% %b% %c% %d% %e%       0 -2000 %a% %b% %c% %d% %e%     500 -2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo     0 -2000 %a% %b% %c% %d% %e%     500 -2000 %a% %b% %c% %d% %e%       0 -1500 %a% %b% %c% %d% %e%     500 -1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo     0 -1500 %a% %b% %c% %d% %e%     500 -1500 %a% %b% %c% %d% %e%       0 -1000 %a% %b% %c% %d% %e%     500 -1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo     0 -1000 %a% %b% %c% %d% %e%     500 -1000 %a% %b% %c% %d% %e%       0  -500 %a% %b% %c% %d% %e%     500  -500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo     0  -500 %a% %b% %c% %d% %e%     500  -500 %a% %b% %c% %d% %e%       0     0 %a% %b% %c% %d% %e%     500     0 %a% %b% %c% %d% %e%  %f% >>water.dat
echo     0     0 %a% %b% %c% %d% %e%     500     0 %a% %b% %c% %d% %e%       0   500 %a% %b% %c% %d% %e%     500   500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo     0   500 %a% %b% %c% %d% %e%     500   500 %a% %b% %c% %d% %e%       0  1000 %a% %b% %c% %d% %e%     500  1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo     0  1000 %a% %b% %c% %d% %e%     500  1000 %a% %b% %c% %d% %e%       0  1500 %a% %b% %c% %d% %e%     500  1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo     0  1500 %a% %b% %c% %d% %e%     500  1500 %a% %b% %c% %d% %e%       0  2000 %a% %b% %c% %d% %e%     500  2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo     0  2000 %a% %b% %c% %d% %e%     500  2000 %a% %b% %c% %d% %e%       0  2500 %a% %b% %c% %d% %e%     500  2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo     0  2500 %a% %b% %c% %d% %e%     500  2500 %a% %b% %c% %d% %e%       0  2998 %a% %b% %c% %d% %e%     500  2998 %a% %b% %c% %d% %e%  %f% >>water.dat
echo   500 -2998 %a% %b% %c% %d% %e%    1000 -2998 %a% %b% %c% %d% %e%     500 -2500 %a% %b% %c% %d% %e%    1000 -2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo   500 -2500 %a% %b% %c% %d% %e%    1000 -2500 %a% %b% %c% %d% %e%     500 -2000 %a% %b% %c% %d% %e%    1000 -2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo   500 -2000 %a% %b% %c% %d% %e%    1000 -2000 %a% %b% %c% %d% %e%     500 -1500 %a% %b% %c% %d% %e%    1000 -1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo   500 -1500 %a% %b% %c% %d% %e%    1000 -1500 %a% %b% %c% %d% %e%     500 -1000 %a% %b% %c% %d% %e%    1000 -1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo   500 -1000 %a% %b% %c% %d% %e%    1000 -1000 %a% %b% %c% %d% %e%     500  -500 %a% %b% %c% %d% %e%    1000  -500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo   500  -500 %a% %b% %c% %d% %e%    1000  -500 %a% %b% %c% %d% %e%     500     0 %a% %b% %c% %d% %e%    1000     0 %a% %b% %c% %d% %e%  %f% >>water.dat
echo   500     0 %a% %b% %c% %d% %e%    1000     0 %a% %b% %c% %d% %e%     500   500 %a% %b% %c% %d% %e%    1000   500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo   500   500 %a% %b% %c% %d% %e%    1000   500 %a% %b% %c% %d% %e%     500  1000 %a% %b% %c% %d% %e%    1000  1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo   500  1000 %a% %b% %c% %d% %e%    1000  1000 %a% %b% %c% %d% %e%     500  1500 %a% %b% %c% %d% %e%    1000  1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo   500  1500 %a% %b% %c% %d% %e%    1000  1500 %a% %b% %c% %d% %e%     500  2000 %a% %b% %c% %d% %e%    1000  2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo   500  2000 %a% %b% %c% %d% %e%    1000  2000 %a% %b% %c% %d% %e%     500  2500 %a% %b% %c% %d% %e%    1000  2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo   500  2500 %a% %b% %c% %d% %e%    1000  2500 %a% %b% %c% %d% %e%     500  2998 %a% %b% %c% %d% %e%    1000  2998 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1000 -2998 %a% %b% %c% %d% %e%    1500 -2998 %a% %b% %c% %d% %e%    1000 -2500 %a% %b% %c% %d% %e%    1500 -2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1000 -2500 %a% %b% %c% %d% %e%    1500 -2500 %a% %b% %c% %d% %e%    1000 -2000 %a% %b% %c% %d% %e%    1500 -2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1000 -2000 %a% %b% %c% %d% %e%    1500 -2000 %a% %b% %c% %d% %e%    1000 -1500 %a% %b% %c% %d% %e%    1500 -1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1000 -1500 %a% %b% %c% %d% %e%    1500 -1500 %a% %b% %c% %d% %e%    1000 -1000 %a% %b% %c% %d% %e%    1500 -1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1000 -1000 %a% %b% %c% %d% %e%    1500 -1000 %a% %b% %c% %d% %e%    1000  -500 %a% %b% %c% %d% %e%    1500  -500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1000  -500 %a% %b% %c% %d% %e%    1500  -500 %a% %b% %c% %d% %e%    1000     0 %a% %b% %c% %d% %e%    1500     0 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1000     0 %a% %b% %c% %d% %e%    1500     0 %a% %b% %c% %d% %e%    1000   500 %a% %b% %c% %d% %e%    1500   500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1000   500 %a% %b% %c% %d% %e%    1500   500 %a% %b% %c% %d% %e%    1000  1000 %a% %b% %c% %d% %e%    1500  1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1000  1000 %a% %b% %c% %d% %e%    1500  1000 %a% %b% %c% %d% %e%    1000  1500 %a% %b% %c% %d% %e%    1500  1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1000  1500 %a% %b% %c% %d% %e%    1500  1500 %a% %b% %c% %d% %e%    1000  2000 %a% %b% %c% %d% %e%    1500  2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1000  2000 %a% %b% %c% %d% %e%    1500  2000 %a% %b% %c% %d% %e%    1000  2500 %a% %b% %c% %d% %e%    1500  2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1000  2500 %a% %b% %c% %d% %e%    1500  2500 %a% %b% %c% %d% %e%    1000  2998 %a% %b% %c% %d% %e%    1500  2998 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1500 -2998 %a% %b% %c% %d% %e%    2000 -2998 %a% %b% %c% %d% %e%    1500 -2500 %a% %b% %c% %d% %e%    2000 -2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1500 -2500 %a% %b% %c% %d% %e%    2000 -2500 %a% %b% %c% %d% %e%    1500 -2000 %a% %b% %c% %d% %e%    2000 -2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1500 -2000 %a% %b% %c% %d% %e%    2000 -2000 %a% %b% %c% %d% %e%    1500 -1500 %a% %b% %c% %d% %e%    2000 -1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1500 -1500 %a% %b% %c% %d% %e%    2000 -1500 %a% %b% %c% %d% %e%    1500 -1000 %a% %b% %c% %d% %e%    2000 -1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1500 -1000 %a% %b% %c% %d% %e%    2000 -1000 %a% %b% %c% %d% %e%    1500  -500 %a% %b% %c% %d% %e%    2000  -500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1500  -500 %a% %b% %c% %d% %e%    2000  -500 %a% %b% %c% %d% %e%    1500     0 %a% %b% %c% %d% %e%    2000     0 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1500     0 %a% %b% %c% %d% %e%    2000     0 %a% %b% %c% %d% %e%    1500   500 %a% %b% %c% %d% %e%    2000   500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1500   500 %a% %b% %c% %d% %e%    2000   500 %a% %b% %c% %d% %e%    1500  1000 %a% %b% %c% %d% %e%    2000  1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1500  1000 %a% %b% %c% %d% %e%    2000  1000 %a% %b% %c% %d% %e%    1500  1500 %a% %b% %c% %d% %e%    2000  1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1500  1500 %a% %b% %c% %d% %e%    2000  1500 %a% %b% %c% %d% %e%    1500  2000 %a% %b% %c% %d% %e%    2000  2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1500  2000 %a% %b% %c% %d% %e%    2000  2000 %a% %b% %c% %d% %e%    1500  2500 %a% %b% %c% %d% %e%    2000  2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  1500  2500 %a% %b% %c% %d% %e%    2000  2500 %a% %b% %c% %d% %e%    1500  2998 %a% %b% %c% %d% %e%    2000  2998 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2000 -2998 %a% %b% %c% %d% %e%    2500 -2998 %a% %b% %c% %d% %e%    2000 -2500 %a% %b% %c% %d% %e%    2500 -2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2000 -2500 %a% %b% %c% %d% %e%    2500 -2500 %a% %b% %c% %d% %e%    2000 -2000 %a% %b% %c% %d% %e%    2500 -2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2000 -2000 %a% %b% %c% %d% %e%    2500 -2000 %a% %b% %c% %d% %e%    2000 -1500 %a% %b% %c% %d% %e%    2500 -1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2000 -1500 %a% %b% %c% %d% %e%    2500 -1500 %a% %b% %c% %d% %e%    2000 -1000 %a% %b% %c% %d% %e%    2500 -1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2000 -1000 %a% %b% %c% %d% %e%    2500 -1000 %a% %b% %c% %d% %e%    2000  -500 %a% %b% %c% %d% %e%    2500  -500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2000  -500 %a% %b% %c% %d% %e%    2500  -500 %a% %b% %c% %d% %e%    2000     0 %a% %b% %c% %d% %e%    2500     0 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2000     0 %a% %b% %c% %d% %e%    2500     0 %a% %b% %c% %d% %e%    2000   500 %a% %b% %c% %d% %e%    2500   500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2000   500 %a% %b% %c% %d% %e%    2500   500 %a% %b% %c% %d% %e%    2000  1000 %a% %b% %c% %d% %e%    2500  1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2000  1000 %a% %b% %c% %d% %e%    2500  1000 %a% %b% %c% %d% %e%    2000  1500 %a% %b% %c% %d% %e%    2500  1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2000  1500 %a% %b% %c% %d% %e%    2500  1500 %a% %b% %c% %d% %e%    2000  2000 %a% %b% %c% %d% %e%    2500  2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2000  2000 %a% %b% %c% %d% %e%    2500  2000 %a% %b% %c% %d% %e%    2000  2500 %a% %b% %c% %d% %e%    2500  2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2000  2500 %a% %b% %c% %d% %e%    2500  2500 %a% %b% %c% %d% %e%    2000  2998 %a% %b% %c% %d% %e%    2500  2998 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2500 -2998 %a% %b% %c% %d% %e%    2998 -2998 %a% %b% %c% %d% %e%    2500 -2500 %a% %b% %c% %d% %e%    2998 -2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2500 -2500 %a% %b% %c% %d% %e%    2998 -2500 %a% %b% %c% %d% %e%    2500 -2000 %a% %b% %c% %d% %e%    2998 -2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2500 -2000 %a% %b% %c% %d% %e%    2998 -2000 %a% %b% %c% %d% %e%    2500 -1500 %a% %b% %c% %d% %e%    2998 -1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2500 -1500 %a% %b% %c% %d% %e%    2998 -1500 %a% %b% %c% %d% %e%    2500 -1000 %a% %b% %c% %d% %e%    2998 -1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2500 -1000 %a% %b% %c% %d% %e%    2998 -1000 %a% %b% %c% %d% %e%    2500  -500 %a% %b% %c% %d% %e%    2998  -500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2500  -500 %a% %b% %c% %d% %e%    2998  -500 %a% %b% %c% %d% %e%    2500     0 %a% %b% %c% %d% %e%    2998     0 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2500     0 %a% %b% %c% %d% %e%    2998     0 %a% %b% %c% %d% %e%    2500   500 %a% %b% %c% %d% %e%    2998   500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2500   500 %a% %b% %c% %d% %e%    2998   500 %a% %b% %c% %d% %e%    2500  1000 %a% %b% %c% %d% %e%    2998  1000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2500  1000 %a% %b% %c% %d% %e%    2998  1000 %a% %b% %c% %d% %e%    2500  1500 %a% %b% %c% %d% %e%    2998  1500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2500  1500 %a% %b% %c% %d% %e%    2998  1500 %a% %b% %c% %d% %e%    2500  2000 %a% %b% %c% %d% %e%    2998  2000 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2500  2000 %a% %b% %c% %d% %e%    2998  2000 %a% %b% %c% %d% %e%    2500  2500 %a% %b% %c% %d% %e%    2998  2500 %a% %b% %c% %d% %e%  %f% >>water.dat
echo  2500  2500 %a% %b% %c% %d% %e%    2998  2500 %a% %b% %c% %d% %e%    2500  2998 %a% %b% %c% %d% %e%    2998  2998 %a% %b% %c% %d% %e%  %f% >>water.dat

echo processed >water1.dat
echo -2998 -2998 %a% %b% %c% %d% %e%   -2500 -2998 %a% %b% %c% %d% %e%   -2998 -2500 %a% %b% %c% %d% %e%   -2500 -2500 %a% %b% %c% %d% %e% >>water1.dat
echo -2998 -2500 %a% %b% %c% %d% %e%   -2500 -2500 %a% %b% %c% %d% %e%   -2998 -2000 %a% %b% %c% %d% %e%   -2500 -2000 %a% %b% %c% %d% %e% >>water1.dat
echo -2998 -2000 %a% %b% %c% %d% %e%   -2500 -2000 %a% %b% %c% %d% %e%   -2998 -1500 %a% %b% %c% %d% %e%   -2500 -1500 %a% %b% %c% %d% %e% >>water1.dat
echo -2998 -1500 %a% %b% %c% %d% %e%   -2500 -1500 %a% %b% %c% %d% %e%   -2998 -1000 %a% %b% %c% %d% %e%   -2500 -1000 %a% %b% %c% %d% %e% >>water1.dat
echo -2998 -1000 %a% %b% %c% %d% %e%   -2500 -1000 %a% %b% %c% %d% %e%   -2998  -500 %a% %b% %c% %d% %e%   -2500  -500 %a% %b% %c% %d% %e% >>water1.dat
echo -2998  -500 %a% %b% %c% %d% %e%   -2500  -500 %a% %b% %c% %d% %e%   -2998     0 %a% %b% %c% %d% %e%   -2500     0 %a% %b% %c% %d% %e% >>water1.dat
echo -2998     0 %a% %b% %c% %d% %e%   -2500     0 %a% %b% %c% %d% %e%   -2998   500 %a% %b% %c% %d% %e%   -2500   500 %a% %b% %c% %d% %e% >>water1.dat
echo -2998   500 %a% %b% %c% %d% %e%   -2500   500 %a% %b% %c% %d% %e%   -2998  1000 %a% %b% %c% %d% %e%   -2500  1000 %a% %b% %c% %d% %e% >>water1.dat
echo -2998  1000 %a% %b% %c% %d% %e%   -2500  1000 %a% %b% %c% %d% %e%   -2998  1500 %a% %b% %c% %d% %e%   -2500  1500 %a% %b% %c% %d% %e% >>water1.dat
echo -2998  1500 %a% %b% %c% %d% %e%   -2500  1500 %a% %b% %c% %d% %e%   -2998  2000 %a% %b% %c% %d% %e%   -2500  2000 %a% %b% %c% %d% %e% >>water1.dat
echo -2998  2000 %a% %b% %c% %d% %e%   -2500  2000 %a% %b% %c% %d% %e%   -2998  2500 %a% %b% %c% %d% %e%   -2500  2500 %a% %b% %c% %d% %e% >>water1.dat
echo -2998  2500 %a% %b% %c% %d% %e%   -2500  2500 %a% %b% %c% %d% %e%   -2998  2998 %a% %b% %c% %d% %e%   -2500  2998 %a% %b% %c% %d% %e% >>water1.dat
echo -2500 -2998 %a% %b% %c% %d% %e%   -2000 -2998 %a% %b% %c% %d% %e%   -2500 -2500 %a% %b% %c% %d% %e%   -2000 -2500 %a% %b% %c% %d% %e% >>water1.dat
echo -2500 -2500 %a% %b% %c% %d% %e%   -2000 -2500 %a% %b% %c% %d% %e%   -2500 -2000 %a% %b% %c% %d% %e%   -2000 -2000 %a% %b% %c% %d% %e% >>water1.dat
echo -2500 -2000 %a% %b% %c% %d% %e%   -2000 -2000 %a% %b% %c% %d% %e%   -2500 -1500 %a% %b% %c% %d% %e%   -2000 -1500 %a% %b% %c% %d% %e% >>water1.dat
echo -2500 -1500 %a% %b% %c% %d% %e%   -2000 -1500 %a% %b% %c% %d% %e%   -2500 -1000 %a% %b% %c% %d% %e%   -2000 -1000 %a% %b% %c% %d% %e% >>water1.dat
echo -2500 -1000 %a% %b% %c% %d% %e%   -2000 -1000 %a% %b% %c% %d% %e%   -2500  -500 %a% %b% %c% %d% %e%   -2000  -500 %a% %b% %c% %d% %e% >>water1.dat
echo -2500  -500 %a% %b% %c% %d% %e%   -2000  -500 %a% %b% %c% %d% %e%   -2500     0 %a% %b% %c% %d% %e%   -2000     0 %a% %b% %c% %d% %e% >>water1.dat
echo -2500     0 %a% %b% %c% %d% %e%   -2000     0 %a% %b% %c% %d% %e%   -2500   500 %a% %b% %c% %d% %e%   -2000   500 %a% %b% %c% %d% %e% >>water1.dat
echo -2500   500 %a% %b% %c% %d% %e%   -2000   500 %a% %b% %c% %d% %e%   -2500  1000 %a% %b% %c% %d% %e%   -2000  1000 %a% %b% %c% %d% %e% >>water1.dat
echo -2500  1000 %a% %b% %c% %d% %e%   -2000  1000 %a% %b% %c% %d% %e%   -2500  1500 %a% %b% %c% %d% %e%   -2000  1500 %a% %b% %c% %d% %e% >>water1.dat
echo -2500  1500 %a% %b% %c% %d% %e%   -2000  1500 %a% %b% %c% %d% %e%   -2500  2000 %a% %b% %c% %d% %e%   -2000  2000 %a% %b% %c% %d% %e% >>water1.dat
echo -2500  2000 %a% %b% %c% %d% %e%   -2000  2000 %a% %b% %c% %d% %e%   -2500  2500 %a% %b% %c% %d% %e%   -2000  2500 %a% %b% %c% %d% %e% >>water1.dat
echo -2500  2500 %a% %b% %c% %d% %e%   -2000  2500 %a% %b% %c% %d% %e%   -2500  2998 %a% %b% %c% %d% %e%   -2000  2998 %a% %b% %c% %d% %e% >>water1.dat
echo -2000 -2998 %a% %b% %c% %d% %e%   -1500 -2998 %a% %b% %c% %d% %e%   -2000 -2500 %a% %b% %c% %d% %e%   -1500 -2500 %a% %b% %c% %d% %e% >>water1.dat
echo -2000 -2500 %a% %b% %c% %d% %e%   -1500 -2500 %a% %b% %c% %d% %e%   -2000 -2000 %a% %b% %c% %d% %e%   -1500 -2000 %a% %b% %c% %d% %e% >>water1.dat
echo -2000 -2000 %a% %b% %c% %d% %e%   -1500 -2000 %a% %b% %c% %d% %e%   -2000 -1500 %a% %b% %c% %d% %e%   -1500 -1500 %a% %b% %c% %d% %e% >>water1.dat
echo -2000 -1500 %a% %b% %c% %d% %e%   -1500 -1500 %a% %b% %c% %d% %e%   -2000 -1000 %a% %b% %c% %d% %e%   -1500 -1000 %a% %b% %c% %d% %e% >>water1.dat
echo -2000 -1000 %a% %b% %c% %d% %e%   -1500 -1000 %a% %b% %c% %d% %e%   -2000  -500 %a% %b% %c% %d% %e%   -1500  -500 %a% %b% %c% %d% %e% >>water1.dat
echo -2000  -500 %a% %b% %c% %d% %e%   -1500  -500 %a% %b% %c% %d% %e%   -2000     0 %a% %b% %c% %d% %e%   -1500     0 %a% %b% %c% %d% %e% >>water1.dat
echo -2000     0 %a% %b% %c% %d% %e%   -1500     0 %a% %b% %c% %d% %e%   -2000   500 %a% %b% %c% %d% %e%   -1500   500 %a% %b% %c% %d% %e% >>water1.dat
echo -2000   500 %a% %b% %c% %d% %e%   -1500   500 %a% %b% %c% %d% %e%   -2000  1000 %a% %b% %c% %d% %e%   -1500  1000 %a% %b% %c% %d% %e% >>water1.dat
echo -2000  1000 %a% %b% %c% %d% %e%   -1500  1000 %a% %b% %c% %d% %e%   -2000  1500 %a% %b% %c% %d% %e%   -1500  1500 %a% %b% %c% %d% %e% >>water1.dat
echo -2000  1500 %a% %b% %c% %d% %e%   -1500  1500 %a% %b% %c% %d% %e%   -2000  2000 %a% %b% %c% %d% %e%   -1500  2000 %a% %b% %c% %d% %e% >>water1.dat
echo -2000  2000 %a% %b% %c% %d% %e%   -1500  2000 %a% %b% %c% %d% %e%   -2000  2500 %a% %b% %c% %d% %e%   -1500  2500 %a% %b% %c% %d% %e% >>water1.dat
echo -2000  2500 %a% %b% %c% %d% %e%   -1500  2500 %a% %b% %c% %d% %e%   -2000  2998 %a% %b% %c% %d% %e%   -1500  2998 %a% %b% %c% %d% %e% >>water1.dat
echo -1500 -2998 %a% %b% %c% %d% %e%   -1000 -2998 %a% %b% %c% %d% %e%   -1500 -2500 %a% %b% %c% %d% %e%   -1000 -2500 %a% %b% %c% %d% %e% >>water1.dat
echo -1500 -2500 %a% %b% %c% %d% %e%   -1000 -2500 %a% %b% %c% %d% %e%   -1500 -2000 %a% %b% %c% %d% %e%   -1000 -2000 %a% %b% %c% %d% %e% >>water1.dat
echo -1500 -2000 %a% %b% %c% %d% %e%   -1000 -2000 %a% %b% %c% %d% %e%   -1500 -1500 %a% %b% %c% %d% %e%   -1000 -1500 %a% %b% %c% %d% %e% >>water1.dat
echo -1500 -1500 %a% %b% %c% %d% %e%   -1000 -1500 %a% %b% %c% %d% %e%   -1500 -1000 %a% %b% %c% %d% %e%   -1000 -1000 %a% %b% %c% %d% %e% >>water1.dat
echo -1500 -1000 %a% %b% %c% %d% %e%   -1000 -1000 %a% %b% %c% %d% %e%   -1500  -500 %a% %b% %c% %d% %e%   -1000  -500 %a% %b% %c% %d% %e% >>water1.dat
echo -1500  -500 %a% %b% %c% %d% %e%   -1000  -500 %a% %b% %c% %d% %e%   -1500     0 %a% %b% %c% %d% %e%   -1000     0 %a% %b% %c% %d% %e% >>water1.dat
echo -1500     0 %a% %b% %c% %d% %e%   -1000     0 %a% %b% %c% %d% %e%   -1500   500 %a% %b% %c% %d% %e%   -1000   500 %a% %b% %c% %d% %e% >>water1.dat
echo -1500   500 %a% %b% %c% %d% %e%   -1000   500 %a% %b% %c% %d% %e%   -1500  1000 %a% %b% %c% %d% %e%   -1000  1000 %a% %b% %c% %d% %e% >>water1.dat
echo -1500  1000 %a% %b% %c% %d% %e%   -1000  1000 %a% %b% %c% %d% %e%   -1500  1500 %a% %b% %c% %d% %e%   -1000  1500 %a% %b% %c% %d% %e% >>water1.dat
echo -1500  1500 %a% %b% %c% %d% %e%   -1000  1500 %a% %b% %c% %d% %e%   -1500  2000 %a% %b% %c% %d% %e%   -1000  2000 %a% %b% %c% %d% %e% >>water1.dat
echo -1500  2000 %a% %b% %c% %d% %e%   -1000  2000 %a% %b% %c% %d% %e%   -1500  2500 %a% %b% %c% %d% %e%   -1000  2500 %a% %b% %c% %d% %e% >>water1.dat
echo -1500  2500 %a% %b% %c% %d% %e%   -1000  2500 %a% %b% %c% %d% %e%   -1500  2998 %a% %b% %c% %d% %e%   -1000  2998 %a% %b% %c% %d% %e% >>water1.dat
echo -1000 -2998 %a% %b% %c% %d% %e%    -500 -2998 %a% %b% %c% %d% %e%   -1000 -2500 %a% %b% %c% %d% %e%    -500 -2500 %a% %b% %c% %d% %e% >>water1.dat
echo -1000 -2500 %a% %b% %c% %d% %e%    -500 -2500 %a% %b% %c% %d% %e%   -1000 -2000 %a% %b% %c% %d% %e%    -500 -2000 %a% %b% %c% %d% %e% >>water1.dat
echo -1000 -2000 %a% %b% %c% %d% %e%    -500 -2000 %a% %b% %c% %d% %e%   -1000 -1500 %a% %b% %c% %d% %e%    -500 -1500 %a% %b% %c% %d% %e% >>water1.dat
echo -1000 -1500 %a% %b% %c% %d% %e%    -500 -1500 %a% %b% %c% %d% %e%   -1000 -1000 %a% %b% %c% %d% %e%    -500 -1000 %a% %b% %c% %d% %e% >>water1.dat
echo -1000 -1000 %a% %b% %c% %d% %e%    -500 -1000 %a% %b% %c% %d% %e%   -1000  -500 %a% %b% %c% %d% %e%    -500  -500 %a% %b% %c% %d% %e% >>water1.dat
echo -1000  -500 %a% %b% %c% %d% %e%    -500  -500 %a% %b% %c% %d% %e%   -1000     0 %a% %b% %c% %d% %e%    -500     0 %a% %b% %c% %d% %e% >>water1.dat
echo -1000     0 %a% %b% %c% %d% %e%    -500     0 %a% %b% %c% %d% %e%   -1000   500 %a% %b% %c% %d% %e%    -500   500 %a% %b% %c% %d% %e% >>water1.dat
echo -1000   500 %a% %b% %c% %d% %e%    -500   500 %a% %b% %c% %d% %e%   -1000  1000 %a% %b% %c% %d% %e%    -500  1000 %a% %b% %c% %d% %e% >>water1.dat
echo -1000  1000 %a% %b% %c% %d% %e%    -500  1000 %a% %b% %c% %d% %e%   -1000  1500 %a% %b% %c% %d% %e%    -500  1500 %a% %b% %c% %d% %e% >>water1.dat
echo -1000  1500 %a% %b% %c% %d% %e%    -500  1500 %a% %b% %c% %d% %e%   -1000  2000 %a% %b% %c% %d% %e%    -500  2000 %a% %b% %c% %d% %e% >>water1.dat
echo -1000  2000 %a% %b% %c% %d% %e%    -500  2000 %a% %b% %c% %d% %e%   -1000  2500 %a% %b% %c% %d% %e%    -500  2500 %a% %b% %c% %d% %e% >>water1.dat
echo -1000  2500 %a% %b% %c% %d% %e%    -500  2500 %a% %b% %c% %d% %e%   -1000  2998 %a% %b% %c% %d% %e%    -500  2998 %a% %b% %c% %d% %e% >>water1.dat
echo  -500 -2998 %a% %b% %c% %d% %e%       0 -2998 %a% %b% %c% %d% %e%    -500 -2500 %a% %b% %c% %d% %e%       0 -2500 %a% %b% %c% %d% %e% >>water1.dat
echo  -500 -2500 %a% %b% %c% %d% %e%       0 -2500 %a% %b% %c% %d% %e%    -500 -2000 %a% %b% %c% %d% %e%       0 -2000 %a% %b% %c% %d% %e% >>water1.dat
echo  -500 -2000 %a% %b% %c% %d% %e%       0 -2000 %a% %b% %c% %d% %e%    -500 -1500 %a% %b% %c% %d% %e%       0 -1500 %a% %b% %c% %d% %e% >>water1.dat
echo  -500 -1500 %a% %b% %c% %d% %e%       0 -1500 %a% %b% %c% %d% %e%    -500 -1000 %a% %b% %c% %d% %e%       0 -1000 %a% %b% %c% %d% %e% >>water1.dat
echo  -500 -1000 %a% %b% %c% %d% %e%       0 -1000 %a% %b% %c% %d% %e%    -500  -500 %a% %b% %c% %d% %e%       0  -500 %a% %b% %c% %d% %e% >>water1.dat
echo  -500  -500 %a% %b% %c% %d% %e%       0  -500 %a% %b% %c% %d% %e%    -500     0 %a% %b% %c% %d% %e%       0     0 %a% %b% %c% %d% %e% >>water1.dat
echo  -500     0 %a% %b% %c% %d% %e%       0     0 %a% %b% %c% %d% %e%    -500   500 %a% %b% %c% %d% %e%       0   500 %a% %b% %c% %d% %e% >>water1.dat
echo  -500   500 %a% %b% %c% %d% %e%       0   500 %a% %b% %c% %d% %e%    -500  1000 %a% %b% %c% %d% %e%       0  1000 %a% %b% %c% %d% %e% >>water1.dat
echo  -500  1000 %a% %b% %c% %d% %e%       0  1000 %a% %b% %c% %d% %e%    -500  1500 %a% %b% %c% %d% %e%       0  1500 %a% %b% %c% %d% %e% >>water1.dat
echo  -500  1500 %a% %b% %c% %d% %e%       0  1500 %a% %b% %c% %d% %e%    -500  2000 %a% %b% %c% %d% %e%       0  2000 %a% %b% %c% %d% %e% >>water1.dat
echo  -500  2000 %a% %b% %c% %d% %e%       0  2000 %a% %b% %c% %d% %e%    -500  2500 %a% %b% %c% %d% %e%       0  2500 %a% %b% %c% %d% %e% >>water1.dat
echo  -500  2500 %a% %b% %c% %d% %e%       0  2500 %a% %b% %c% %d% %e%    -500  2998 %a% %b% %c% %d% %e%       0  2998 %a% %b% %c% %d% %e% >>water1.dat
echo     0 -2998 %a% %b% %c% %d% %e%     500 -2998 %a% %b% %c% %d% %e%       0 -2500 %a% %b% %c% %d% %e%     500 -2500 %a% %b% %c% %d% %e% >>water1.dat
echo     0 -2500 %a% %b% %c% %d% %e%     500 -2500 %a% %b% %c% %d% %e%       0 -2000 %a% %b% %c% %d% %e%     500 -2000 %a% %b% %c% %d% %e% >>water1.dat
echo     0 -2000 %a% %b% %c% %d% %e%     500 -2000 %a% %b% %c% %d% %e%       0 -1500 %a% %b% %c% %d% %e%     500 -1500 %a% %b% %c% %d% %e% >>water1.dat
echo     0 -1500 %a% %b% %c% %d% %e%     500 -1500 %a% %b% %c% %d% %e%       0 -1000 %a% %b% %c% %d% %e%     500 -1000 %a% %b% %c% %d% %e% >>water1.dat
echo     0 -1000 %a% %b% %c% %d% %e%     500 -1000 %a% %b% %c% %d% %e%       0  -500 %a% %b% %c% %d% %e%     500  -500 %a% %b% %c% %d% %e% >>water1.dat
echo     0  -500 %a% %b% %c% %d% %e%     500  -500 %a% %b% %c% %d% %e%       0     0 %a% %b% %c% %d% %e%     500     0 %a% %b% %c% %d% %e% >>water1.dat
echo     0     0 %a% %b% %c% %d% %e%     500     0 %a% %b% %c% %d% %e%       0   500 %a% %b% %c% %d% %e%     500   500 %a% %b% %c% %d% %e% >>water1.dat
echo     0   500 %a% %b% %c% %d% %e%     500   500 %a% %b% %c% %d% %e%       0  1000 %a% %b% %c% %d% %e%     500  1000 %a% %b% %c% %d% %e% >>water1.dat
echo     0  1000 %a% %b% %c% %d% %e%     500  1000 %a% %b% %c% %d% %e%       0  1500 %a% %b% %c% %d% %e%     500  1500 %a% %b% %c% %d% %e% >>water1.dat
echo     0  1500 %a% %b% %c% %d% %e%     500  1500 %a% %b% %c% %d% %e%       0  2000 %a% %b% %c% %d% %e%     500  2000 %a% %b% %c% %d% %e% >>water1.dat
echo     0  2000 %a% %b% %c% %d% %e%     500  2000 %a% %b% %c% %d% %e%       0  2500 %a% %b% %c% %d% %e%     500  2500 %a% %b% %c% %d% %e% >>water1.dat
echo     0  2500 %a% %b% %c% %d% %e%     500  2500 %a% %b% %c% %d% %e%       0  2998 %a% %b% %c% %d% %e%     500  2998 %a% %b% %c% %d% %e% >>water1.dat
echo   500 -2998 %a% %b% %c% %d% %e%    1000 -2998 %a% %b% %c% %d% %e%     500 -2500 %a% %b% %c% %d% %e%    1000 -2500 %a% %b% %c% %d% %e% >>water1.dat
echo   500 -2500 %a% %b% %c% %d% %e%    1000 -2500 %a% %b% %c% %d% %e%     500 -2000 %a% %b% %c% %d% %e%    1000 -2000 %a% %b% %c% %d% %e% >>water1.dat
echo   500 -2000 %a% %b% %c% %d% %e%    1000 -2000 %a% %b% %c% %d% %e%     500 -1500 %a% %b% %c% %d% %e%    1000 -1500 %a% %b% %c% %d% %e% >>water1.dat
echo   500 -1500 %a% %b% %c% %d% %e%    1000 -1500 %a% %b% %c% %d% %e%     500 -1000 %a% %b% %c% %d% %e%    1000 -1000 %a% %b% %c% %d% %e% >>water1.dat
echo   500 -1000 %a% %b% %c% %d% %e%    1000 -1000 %a% %b% %c% %d% %e%     500  -500 %a% %b% %c% %d% %e%    1000  -500 %a% %b% %c% %d% %e% >>water1.dat
echo   500  -500 %a% %b% %c% %d% %e%    1000  -500 %a% %b% %c% %d% %e%     500     0 %a% %b% %c% %d% %e%    1000     0 %a% %b% %c% %d% %e% >>water1.dat
echo   500     0 %a% %b% %c% %d% %e%    1000     0 %a% %b% %c% %d% %e%     500   500 %a% %b% %c% %d% %e%    1000   500 %a% %b% %c% %d% %e% >>water1.dat
echo   500   500 %a% %b% %c% %d% %e%    1000   500 %a% %b% %c% %d% %e%     500  1000 %a% %b% %c% %d% %e%    1000  1000 %a% %b% %c% %d% %e% >>water1.dat
echo   500  1000 %a% %b% %c% %d% %e%    1000  1000 %a% %b% %c% %d% %e%     500  1500 %a% %b% %c% %d% %e%    1000  1500 %a% %b% %c% %d% %e% >>water1.dat
echo   500  1500 %a% %b% %c% %d% %e%    1000  1500 %a% %b% %c% %d% %e%     500  2000 %a% %b% %c% %d% %e%    1000  2000 %a% %b% %c% %d% %e% >>water1.dat
echo   500  2000 %a% %b% %c% %d% %e%    1000  2000 %a% %b% %c% %d% %e%     500  2500 %a% %b% %c% %d% %e%    1000  2500 %a% %b% %c% %d% %e% >>water1.dat
echo   500  2500 %a% %b% %c% %d% %e%    1000  2500 %a% %b% %c% %d% %e%     500  2998 %a% %b% %c% %d% %e%    1000  2998 %a% %b% %c% %d% %e% >>water1.dat
echo  1000 -2998 %a% %b% %c% %d% %e%    1500 -2998 %a% %b% %c% %d% %e%    1000 -2500 %a% %b% %c% %d% %e%    1500 -2500 %a% %b% %c% %d% %e% >>water1.dat
echo  1000 -2500 %a% %b% %c% %d% %e%    1500 -2500 %a% %b% %c% %d% %e%    1000 -2000 %a% %b% %c% %d% %e%    1500 -2000 %a% %b% %c% %d% %e% >>water1.dat
echo  1000 -2000 %a% %b% %c% %d% %e%    1500 -2000 %a% %b% %c% %d% %e%    1000 -1500 %a% %b% %c% %d% %e%    1500 -1500 %a% %b% %c% %d% %e% >>water1.dat
echo  1000 -1500 %a% %b% %c% %d% %e%    1500 -1500 %a% %b% %c% %d% %e%    1000 -1000 %a% %b% %c% %d% %e%    1500 -1000 %a% %b% %c% %d% %e% >>water1.dat
echo  1000 -1000 %a% %b% %c% %d% %e%    1500 -1000 %a% %b% %c% %d% %e%    1000  -500 %a% %b% %c% %d% %e%    1500  -500 %a% %b% %c% %d% %e% >>water1.dat
echo  1000  -500 %a% %b% %c% %d% %e%    1500  -500 %a% %b% %c% %d% %e%    1000     0 %a% %b% %c% %d% %e%    1500     0 %a% %b% %c% %d% %e% >>water1.dat
echo  1000     0 %a% %b% %c% %d% %e%    1500     0 %a% %b% %c% %d% %e%    1000   500 %a% %b% %c% %d% %e%    1500   500 %a% %b% %c% %d% %e% >>water1.dat
echo  1000   500 %a% %b% %c% %d% %e%    1500   500 %a% %b% %c% %d% %e%    1000  1000 %a% %b% %c% %d% %e%    1500  1000 %a% %b% %c% %d% %e% >>water1.dat
echo  1000  1000 %a% %b% %c% %d% %e%    1500  1000 %a% %b% %c% %d% %e%    1000  1500 %a% %b% %c% %d% %e%    1500  1500 %a% %b% %c% %d% %e% >>water1.dat
echo  1000  1500 %a% %b% %c% %d% %e%    1500  1500 %a% %b% %c% %d% %e%    1000  2000 %a% %b% %c% %d% %e%    1500  2000 %a% %b% %c% %d% %e% >>water1.dat
echo  1000  2000 %a% %b% %c% %d% %e%    1500  2000 %a% %b% %c% %d% %e%    1000  2500 %a% %b% %c% %d% %e%    1500  2500 %a% %b% %c% %d% %e% >>water1.dat
echo  1000  2500 %a% %b% %c% %d% %e%    1500  2500 %a% %b% %c% %d% %e%    1000  2998 %a% %b% %c% %d% %e%    1500  2998 %a% %b% %c% %d% %e% >>water1.dat
echo  1500 -2998 %a% %b% %c% %d% %e%    2000 -2998 %a% %b% %c% %d% %e%    1500 -2500 %a% %b% %c% %d% %e%    2000 -2500 %a% %b% %c% %d% %e% >>water1.dat
echo  1500 -2500 %a% %b% %c% %d% %e%    2000 -2500 %a% %b% %c% %d% %e%    1500 -2000 %a% %b% %c% %d% %e%    2000 -2000 %a% %b% %c% %d% %e% >>water1.dat
echo  1500 -2000 %a% %b% %c% %d% %e%    2000 -2000 %a% %b% %c% %d% %e%    1500 -1500 %a% %b% %c% %d% %e%    2000 -1500 %a% %b% %c% %d% %e% >>water1.dat
echo  1500 -1500 %a% %b% %c% %d% %e%    2000 -1500 %a% %b% %c% %d% %e%    1500 -1000 %a% %b% %c% %d% %e%    2000 -1000 %a% %b% %c% %d% %e% >>water1.dat
echo  1500 -1000 %a% %b% %c% %d% %e%    2000 -1000 %a% %b% %c% %d% %e%    1500  -500 %a% %b% %c% %d% %e%    2000  -500 %a% %b% %c% %d% %e% >>water1.dat
echo  1500  -500 %a% %b% %c% %d% %e%    2000  -500 %a% %b% %c% %d% %e%    1500     0 %a% %b% %c% %d% %e%    2000     0 %a% %b% %c% %d% %e% >>water1.dat
echo  1500     0 %a% %b% %c% %d% %e%    2000     0 %a% %b% %c% %d% %e%    1500   500 %a% %b% %c% %d% %e%    2000   500 %a% %b% %c% %d% %e% >>water1.dat
echo  1500   500 %a% %b% %c% %d% %e%    2000   500 %a% %b% %c% %d% %e%    1500  1000 %a% %b% %c% %d% %e%    2000  1000 %a% %b% %c% %d% %e% >>water1.dat
echo  1500  1000 %a% %b% %c% %d% %e%    2000  1000 %a% %b% %c% %d% %e%    1500  1500 %a% %b% %c% %d% %e%    2000  1500 %a% %b% %c% %d% %e% >>water1.dat
echo  1500  1500 %a% %b% %c% %d% %e%    2000  1500 %a% %b% %c% %d% %e%    1500  2000 %a% %b% %c% %d% %e%    2000  2000 %a% %b% %c% %d% %e% >>water1.dat
echo  1500  2000 %a% %b% %c% %d% %e%    2000  2000 %a% %b% %c% %d% %e%    1500  2500 %a% %b% %c% %d% %e%    2000  2500 %a% %b% %c% %d% %e% >>water1.dat
echo  1500  2500 %a% %b% %c% %d% %e%    2000  2500 %a% %b% %c% %d% %e%    1500  2998 %a% %b% %c% %d% %e%    2000  2998 %a% %b% %c% %d% %e% >>water1.dat
echo  2000 -2998 %a% %b% %c% %d% %e%    2500 -2998 %a% %b% %c% %d% %e%    2000 -2500 %a% %b% %c% %d% %e%    2500 -2500 %a% %b% %c% %d% %e% >>water1.dat
echo  2000 -2500 %a% %b% %c% %d% %e%    2500 -2500 %a% %b% %c% %d% %e%    2000 -2000 %a% %b% %c% %d% %e%    2500 -2000 %a% %b% %c% %d% %e% >>water1.dat
echo  2000 -2000 %a% %b% %c% %d% %e%    2500 -2000 %a% %b% %c% %d% %e%    2000 -1500 %a% %b% %c% %d% %e%    2500 -1500 %a% %b% %c% %d% %e% >>water1.dat
echo  2000 -1500 %a% %b% %c% %d% %e%    2500 -1500 %a% %b% %c% %d% %e%    2000 -1000 %a% %b% %c% %d% %e%    2500 -1000 %a% %b% %c% %d% %e% >>water1.dat
echo  2000 -1000 %a% %b% %c% %d% %e%    2500 -1000 %a% %b% %c% %d% %e%    2000  -500 %a% %b% %c% %d% %e%    2500  -500 %a% %b% %c% %d% %e% >>water1.dat
echo  2000  -500 %a% %b% %c% %d% %e%    2500  -500 %a% %b% %c% %d% %e%    2000     0 %a% %b% %c% %d% %e%    2500     0 %a% %b% %c% %d% %e% >>water1.dat
echo  2000     0 %a% %b% %c% %d% %e%    2500     0 %a% %b% %c% %d% %e%    2000   500 %a% %b% %c% %d% %e%    2500   500 %a% %b% %c% %d% %e% >>water1.dat
echo  2000   500 %a% %b% %c% %d% %e%    2500   500 %a% %b% %c% %d% %e%    2000  1000 %a% %b% %c% %d% %e%    2500  1000 %a% %b% %c% %d% %e% >>water1.dat
echo  2000  1000 %a% %b% %c% %d% %e%    2500  1000 %a% %b% %c% %d% %e%    2000  1500 %a% %b% %c% %d% %e%    2500  1500 %a% %b% %c% %d% %e% >>water1.dat
echo  2000  1500 %a% %b% %c% %d% %e%    2500  1500 %a% %b% %c% %d% %e%    2000  2000 %a% %b% %c% %d% %e%    2500  2000 %a% %b% %c% %d% %e% >>water1.dat
echo  2000  2000 %a% %b% %c% %d% %e%    2500  2000 %a% %b% %c% %d% %e%    2000  2500 %a% %b% %c% %d% %e%    2500  2500 %a% %b% %c% %d% %e% >>water1.dat
echo  2000  2500 %a% %b% %c% %d% %e%    2500  2500 %a% %b% %c% %d% %e%    2000  2998 %a% %b% %c% %d% %e%    2500  2998 %a% %b% %c% %d% %e% >>water1.dat
echo  2500 -2998 %a% %b% %c% %d% %e%    2998 -2998 %a% %b% %c% %d% %e%    2500 -2500 %a% %b% %c% %d% %e%    2998 -2500 %a% %b% %c% %d% %e% >>water1.dat
echo  2500 -2500 %a% %b% %c% %d% %e%    2998 -2500 %a% %b% %c% %d% %e%    2500 -2000 %a% %b% %c% %d% %e%    2998 -2000 %a% %b% %c% %d% %e% >>water1.dat
echo  2500 -2000 %a% %b% %c% %d% %e%    2998 -2000 %a% %b% %c% %d% %e%    2500 -1500 %a% %b% %c% %d% %e%    2998 -1500 %a% %b% %c% %d% %e% >>water1.dat
echo  2500 -1500 %a% %b% %c% %d% %e%    2998 -1500 %a% %b% %c% %d% %e%    2500 -1000 %a% %b% %c% %d% %e%    2998 -1000 %a% %b% %c% %d% %e% >>water1.dat
echo  2500 -1000 %a% %b% %c% %d% %e%    2998 -1000 %a% %b% %c% %d% %e%    2500  -500 %a% %b% %c% %d% %e%    2998  -500 %a% %b% %c% %d% %e% >>water1.dat
echo  2500  -500 %a% %b% %c% %d% %e%    2998  -500 %a% %b% %c% %d% %e%    2500     0 %a% %b% %c% %d% %e%    2998     0 %a% %b% %c% %d% %e% >>water1.dat
echo  2500     0 %a% %b% %c% %d% %e%    2998     0 %a% %b% %c% %d% %e%    2500   500 %a% %b% %c% %d% %e%    2998   500 %a% %b% %c% %d% %e% >>water1.dat
echo  2500   500 %a% %b% %c% %d% %e%    2998   500 %a% %b% %c% %d% %e%    2500  1000 %a% %b% %c% %d% %e%    2998  1000 %a% %b% %c% %d% %e% >>water1.dat
echo  2500  1000 %a% %b% %c% %d% %e%    2998  1000 %a% %b% %c% %d% %e%    2500  1500 %a% %b% %c% %d% %e%    2998  1500 %a% %b% %c% %d% %e% >>water1.dat
echo  2500  1500 %a% %b% %c% %d% %e%    2998  1500 %a% %b% %c% %d% %e%    2500  2000 %a% %b% %c% %d% %e%    2998  2000 %a% %b% %c% %d% %e% >>water1.dat
echo  2500  2000 %a% %b% %c% %d% %e%    2998  2000 %a% %b% %c% %d% %e%    2500  2500 %a% %b% %c% %d% %e%    2998  2500 %a% %b% %c% %d% %e% >>water1.dat
echo  2500  2500 %a% %b% %c% %d% %e%    2998  2500 %a% %b% %c% %d% %e%    2500  2998 %a% %b% %c% %d% %e%    2998  2998 %a% %b% %c% %d% %e% >>water1.dat

echo WATER.DAT and WATER1.DAT written for water level %level%m and wave size %wavesize%
echo Thanks for using waterlevel_mod by edisoncarter and BlueFusion!
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo https://gaming.youtube.com/watch?v=uQZk2PipAIE Tutorial by RaghavVenkat
echo http://www.logicbricks.in
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
pause
goto break
:exit
echo Cancelled, exiting
pause
:break