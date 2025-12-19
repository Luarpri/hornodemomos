::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBpGSQqDAE+1EbsQ5+n//NaXo04FWeMxNobY1dQ=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBpGSQqDAE+1EbsQ5+n//NaPrV8TW+Y6dYDW1afWdvhd713hFQ==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
::Horno de Momos, escrito por luarpri, ah, ignora eso de arriba
@echo off
title Horno De Momos
:inicio
cls
echo 1. instalar mod
echo 2. copiar partida guardada
echo 3. salir
SET /P opcion=elige una opcion:
if "%opcion%"=="1" goto instalar
if "%opcion%"=="2" goto saves
if "%opcion%"=="3" goto salir
:instalar
cls
SET /P var=localizacion de mod:
SET /P smc=directorio del juego:
echo trabajando...
cd %smc%
ren "www" "www_vanilla"
mkdir "www"
cd %var%
cd www
xcopy *.* %smc%\www /s /e /y
echo proceso terminado, ya deberias abrir el juego.
pause
goto inicio
:saves
xcopy "%userprofile%\AppData\Local/Super Momos Crushers" "%userprofile%\Documents/SMC" /s /e /y
echo Respaldo creado en documentos con el nombre SMC
pause
goto inicio
:restaurar
echo es posible que tu partida se termine rompiendo si la sintaxis de archivos no es correcta, no me hago responsable de lo que ocurra.
echo asegurate de que la carpeta SMC este en documentos, si no, no funcionara!
pause
goto inicio
:salir
exit