@echo off
set repo=Renovate_Great_Port
:start
svn update %repo%
for /f "USEBACKQ" %%i in (`svn info %repo% --show-item last-changed-revision`) do set version=%%i
set file=%repo%_r%version%.zip
if not exist %file% 7z a %file% .\%repo%\* -xr!.svn
if %repo%==Renovate_Great_Port set repo=Renovate_ICE& goto start
if %repo%==Renovate_ICE set repo=Renovate_ICE_OREO& goto start
pause