@echo off
:: Random Batch File Example

:: Print welcome message
echo Welcome to the Random Batch File!
echo -------------------------------
echo This batch file will perform some basic operations.

:: Pause for 2 seconds
timeout /t 2

:: Create a new directory
echo Creating a directory named "TestFolder"
mkdir TestFolder

:: Change into the new directory
cd TestFolder

:: Create a simple text file
echo This is a test file > testfile.txt
echo A test file has been created in TestFolder.

:: Display the current directory
echo Current Directory:
cd

:: Display system information
echo System Information:
systeminfo | findstr /B /C:"OS" /C:"Architecture" /C:"Memory"

:: Pause to keep the window open
pause
