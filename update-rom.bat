@echo off
if exist Renovate_Great_Port set repo=Renovate_Great_Port& goto update
if exist Renovate_ICE set repo=Renovate_ICE& goto update
if exist Renovate_ICE_OREO set repo=Renovate_ICE_OREO& goto update
:update
svn update %repo%
for /f "USEBACKQ" %%i in (`svn info %repo% --show-item last-changed-revision`) do set version=%%i
set file=%repo%_r%version%.zip
if not exist %file% 7z a %file% .\%repo%\* -xr!.svn
if %repo%==Renovate_Great_Port if exist Renovate_ICE set repo=Renovate_ICE& goto update
if %repo%==Renovate_Great_Port if exist Renovate_ICE_OREO set repo=Renovate_ICE_OREO& goto update
if %repo%==Renovate_ICE if exist Renovate_ICE_OREO set repo=Renovate_ICE_OREO& goto update
echo all ROM's have been updated and ziped. Happy Flashing!
pause
