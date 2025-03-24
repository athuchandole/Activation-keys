@echo off
:: Disable the display of commands in the command prompt

:: Command to shut down the PC after 3 hours (10800 seconds)
shutdown -s -t 10800

:: Display a message to the user informing them that the shutdown will happen in 3 hours
echo Your PC will shut down in 3 hours.

:: Pause the script to keep the command prompt open until a key is pressed
pause
