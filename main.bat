::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBpGSQqDAE+1EbsQ5+n//NaPrV8TW+Y6dYDW1afYdPgvpFf3Z5UR/1l1tvddQhJbcXI=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
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
::Zh4grVQjdCyDJGyX8VAjFBpGSQqDAE+1EbsQ5+n//NaPrV8TW+Y6dYDW1afYdPhd713hFQ==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
::Horno de Momos, escrito por luarpri, ah, ignora eso de arriba
::posiblemente tenga que reescribir esto en python cuando salga la version de linux pero no lo ha hecho aun ¯\_(ツ)_/¯
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
cls
echo 1. respaldar partida guardada
echo 2. restaurar partida guardada
SET /P opcion2=elige una opcion:
if "%opcion2%"=="1" goto respaldar
if "%opcion2%"=="2" goto restaurar
:respaldar
cls
xcopy "%userprofile%\AppData\Local/Super Momos Crushers/EBWebView\Default\IndexedDB" "%userprofile%\Documents/SMC%date%" /s /e /y
echo Respaldo creado en documentos con el nombre SMC%date%
pause
:restaurar
:: bien!, funciona!, hurra! (en serio esto perfectamente pudo salir en la 1.1 pero me da igual :losquepocenelgamer:)
cls
echo ADVERTENCIA:
echo Restaurar una partida guardada puede corromper los datos
echo procede con precaucion.
pause
cls
:: jeje, 67
color 0 
SET /P savefile=localizacion de la carpeta de respaldo (ejemplo: SMC06/07/2025/):
xcopy "%savefile%" "%userprofile%\AppData\Local/Super Momos Crushers/EBWebView\Default\IndexedDB" /s /e /y
echo Partida restaurada!
pause
goto inicio
:salir
exit
:: maty, no, no va a salir smc humor 3, cierra la boca