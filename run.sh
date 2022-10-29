@echo off
:entry
echo ------------LazyAntHome------------
goto check_Permissions

:check_Permissions
color 04
    echo Administrative permissions required. Detecting permissions...

    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Success: Administrative permissions confirmed.
        pause
        goto mm
    ) else (
        echo Failure: Current permissions inadequate. Please start with RUN AS ADMINISTRATOR
    )

    pause >nul
