@echo off
:menu
set zip=0
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Renovate ICE SVN Script
echo.
echo Type in a number.
echo.
echo 1. Checkout Renovate ICE G95X ROM
echo 2. Update Renovate ICE G95X ROM
echo 3. Generate Zip file for Renovate ICE G95X ROM
echo 4. Update and generate zip file for Renovate ICE G95X ROM 
echo 0. Exit
echo.
set /p menu=Number: 
echo.
echo.
echo.
if /I %menu% == 1 (
	svn checkout http://www.renovate-ice.com/svn/renovate-g95x/trunk/ Renovate_ICE_G95X
	pause
	goto menu
)
if /I %menu% == 2 if exist Renovate_ICE_G95X ( 
	set repo=Renovate_ICE_G95X
	goto update
) else (
	echo Please Checkout the Repo first
)
if /I %menu% == 3 if exist Renovate_ICE_G95X ( 
	set repo=Renovate_ICE_G95X
	goto zip
) else (
	echo Please Checkout the Repo first
)
if /I %menu% == 4 if exist Renovate_ICE_G95X ( 
	set repo=Renovate_ICE_G95X
	set zip=1
	goto update
) else (
	echo Please Checkout the Repo first
)
if /I %menu% == 0 exit 

:update
svn update %repo%
echo.
if not %zip%==1 (
	goto menu
	pause
)

:zip
for /f "USEBACKQ" %%i in (`svn info %repo% --show-item last-changed-revision`) do set version=%%i
set file=%repo%_r%version%.zip
if not exist %file% (
	7z a %file% .\%repo%\* -xr!.svn
) else (
	echo This zip already exist.
	echo.
)
pause
goto menu
