@echo off
setlocal enabledelayedexpansion

:: Set the directory where the files will be saved
set "dir=."

:: Initialize variables
set "filename="
set /a counter=1

:: Find the next available file name (1.txt, 2.txt, 3.txt, etc.)
:find_next_file
if exist "%dir%\%counter%.txt" (
    set /a counter+=1
    goto find_next_file
)

:: Generate random content to fill 12KB (approximately 12,288 bytes)
set "data="
for /L %%A in (1,1,600) do (
    set "data=!data!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!"
)

:: Create the file with 12KB of data
echo !data:~0,12288! > "%dir%\%counter%.txt"

echo File "%dir%\%counter%.txt" created with random data.

endlocal
