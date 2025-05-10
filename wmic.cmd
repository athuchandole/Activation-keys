@echo off
title CPU Usage - Snapshot
echo.
echo Getting current CPU usage...
wmic cpu get loadpercentage
echo.
pause
