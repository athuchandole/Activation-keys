@echo off
setlocal

:: Get the directory path passed as an argument
set "dir=%~1"

:: Check if the directory exists
if not exist "%dir%" (
    echo The directory does not exist.
    exit /b
)

:: Change to the specified directory
cd /d "%dir%"

:: Loop through each file in the directory
for %%f in (*) do (
    if not "%%f" == "%~nx0" (
        set "ext=%%~xf"
        set "ext=%ext:~1%"  :: Remove the dot from the extension

        if not exist "%dir%\%ext%" (
            mkdir "%dir%\%ext%"
        )

        move "%%f" "%dir%\%ext%\"
    )
)

echo Files have been organized.
endlocal
pause
