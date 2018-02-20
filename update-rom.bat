@echo off
if exist Renovate_ICE_G95X set repo=Renovate_ICE_G95X& goto update
exit /b
:update
svn update %repo%
for /f "USEBACKQ" %%i in (`svn info %repo% --show-item last-changed-revision`) do set version=%%i
set file=%repo%_r%version%.zip
if not exist %file% 7z a %file% .\%repo%\* -xr!.svn
echo all ROM's have been updated and ziped. Happy Flashing!
pause
