rem beta: 5:V1.0.1
@echo off
chcp 65001 >nul
mode 85, 30
title SSh4Windows10 - by reddark

:start
color 01
cls
call :banner
echo :0: Cerrar
echo   :1: instalar SSH 
echo     :2: iniciar SSh
set /p main=Que accion desea realizar?=
if "%main%"=="0" exit
if "%main%"=="1" goto :installSSH
if "%main%"=="2" goto :startSSH
goto :start

:installSSH
echo :: Instalando SSH
dism /Online /Add-Capability /CapabilityName:OpenSSH.Server~~~~0.0.1.0
echo.
echo :: Instalacion completada
echo.
pause >nul
goto :start

:startSSH
set /p ip=Que IP posee la maquina anfitrion?=
set /p user=Que usuario es ek de la maquina anfitrion?=
echo.
echo :: Iniciando conexion...
ssh %user%@%ip%
echo :: Conexion cerrada
pause >nul
goto :start

:banner
echo.
echo.
echo       /\                     
echo      /  \
echo     / /\ \
echo    / ____ \
echo   /_/    \_\
echo.
echo   SSH4WINDOWS
echo.
echo.
exit /b
