@echo off
echo Resetting network settings...
echo This may take a few moments.

:: Releasing and renewing IP
ipconfig /release
ipconfig /renew

:: Flushing DNS cache
ipconfig /flushdns

:: Resetting Winsock
netsh winsock reset

:: Resetting TCP/IP stack
netsh int ip reset

:: Resetting Windows Firewall
netsh advfirewall reset

echo Network reset complete. Please restart your computer.
pause
