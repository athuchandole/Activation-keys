@echo off
echo Activating Proteus...
cd /d "C:\Program Files (x86)\Labcenter Electronics\Proteus 8 Professional"
start /wait "ISIS" "LicenceManager.exe" /activate YOUR_LICENSE_KEY
echo Activation complete!
pause
