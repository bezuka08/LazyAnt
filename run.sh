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



:mm
color 03
echo To Open a tool type /tool number
echo Available Tools:
echo ------------------------------------------------------------------------------------------
echo  1) Wifi key content
echo  3) System Information
echo  5) IP Address
echo  6) Hostname
echo  7) Running Tasks
echo  8) Ports and Services  [UNDER CONSTRUCTION]
echo  9) Trace Route
echo 10) Power Configuration
echo 11) MAC address
echo 12) All Files Scanner
echo 13) All Files Scanner and Repair
echo 14) Drive Scanner
echo 15) Data Transmit Booster
echo 16) Matrix Effect
echo 17) System Database
echo 18) DNS resolver cache refresher (new)
echo 19) Ping (new)
echo 20) Disable Touchpad (new) [UNDER CONSTRUCTION]
echo 21) God Mode (new)
echo 22) DNS Lookup (new) [UNDER CONSTRUCTION]
echo ------------------------------------------------------------------------------------------
set /p activate= LazyAnt~
if %activate%==/1 goto :wifi key content
if %activate%==/2 goto :calculator
if %activate%==/3 goto :system information
if %activate%==/4 goto :devops
if %activate%==/5 goto :ipaddress
if %activate%==/6 goto :hostname
if %activate%==/7 goto :runningtasks
if %activate%==/8 goto :portsandservices
if %activate%==/9 goto :traceroute
if %activate%==/10 goto :powerconfiguration
if %activate%==/11 goto :macaddress
if %activate%==/12 goto :allfilesscanner 
if %activate%==/13 goto :allfilesscannerandrepair
if %activate%==/14 goto :drivescanner
if %activate%==/15 goto :datatransmitbooster
if %activate%==/16 goto :matrixeffect
if %activate%==/17 goto :systemdatabase
if %activate%==/18 goto :dnsresolvercacherefresher
if %activate%==/19 goto :ping
if %activate%==/20 goto :disabletouchpad
if %activate%==/21 goto :godmode
if %activate%==/22 goto :dnslookup
goto :mm
