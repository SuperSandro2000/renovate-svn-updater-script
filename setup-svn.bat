@echo off
echo.
echo Setup Renovate ICE ROM? [Y/N]
set /p rom1=
if /I %rom1%==y svn checkout http://www.renovate-ice.com/svn/renovate-dream/trunk/ Renovate_ICE
echo.
echo Setup Renovate Great Port ROM? [Y/N]
set /p rom2=
svn checkout http://www.renovate-ice.com/svn/renovate-great-port/trunk/ Renovate_Great_Port
echo.
echo Setup Renovate ICE OR3O ROM? [Y/N]
set /p rom3=
svn checkout http://www.renovate-ice.com/svn/renovate-dream-oreo/trunk/ Renovate_ICE_OREO
pause