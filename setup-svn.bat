@echo off
:menu
echo.
echo Type in a number to setup a repository.
echo.
echo 1. Setup Renovate ICE G95X ROM
echo 2. Setup Renovate ICE OR3O ROM
echo 0. Exit
echo.
set /p menu=Number: 
if /I %menu% == 1 svn checkout http://www.renovate-ice.com/svn/renovate-dream/trunk/ Renovate_ICE_G95X
if /I %menu% == 2 svn checkout http://www.renovate-ice.com/svn/renovate-dream-oreo/trunk/ Renovate_ICE_OREO
if /I %menu% == 0 exit 
goto menu
