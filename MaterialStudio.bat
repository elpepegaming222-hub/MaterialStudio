@echo off
title Material Studio
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  echo Iniciando servidor local...
  start "Material Studio Server" cmd /c "py -m http.server 8765"
  timeout /t 2 /nobreak >nul
  start "" "http://localhost:8765/index.html"
  exit /b
)
where python >nul 2>nul
if %errorlevel%==0 (
  echo Iniciando servidor local...
  start "Material Studio Server" cmd /c "python -m http.server 8765"
  timeout /t 2 /nobreak >nul
  start "" "http://localhost:8765/index.html"
  exit /b
)
echo.
echo No se encontro Python.
echo.
echo Para ejecutar Material Studio sin instalar nada adicional,
echo abre index.html en Microsoft Edge o Chrome.
echo.
start "" "%~dp0index.html"
pause
