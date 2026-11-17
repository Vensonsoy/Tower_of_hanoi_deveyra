@echo off
title Tower of Hanoi (Prolog)
cd /d "%~dp0"
where swipl >nul 2>nul
if %errorlevel%==0 goto run_path
if exist "C:\Program Files\swipl\bin\swipl.exe" goto run_default
echo.
echo SWI-Prolog was not found. Install it from https://www.swi-prolog.org/Download.html
echo and tick "Add swipl to the system PATH", then run this file again.
echo.
pause
exit /b 1
:run_path
swipl hanoi.pl
goto end
:run_default
"C:\Program Files\swipl\bin\swipl.exe" hanoi.pl
:end
pause
