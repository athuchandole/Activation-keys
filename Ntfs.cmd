@echo off
echo ============================================
echo This script will format a drive to FAT32.
echo WARNING: All data on the selected drive will be erased!
echo ============================================
echo.
set /p drive=Enter the drive letter (e.g., E:):  
echo You entered: %drive%
pause  
echo Formatting drive %drive% to FAT32...
format %drive% /FS:FAT32 /Q /V:NewDrive
echo Formatting complete.
pause
