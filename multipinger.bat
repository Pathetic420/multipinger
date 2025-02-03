@echo off
:Input
set /p ips=How many IPs would you like to ping? (max 5):
if "%ips%"=="1" goto 1IP
if "%ips%"=="2" goto 2IP
if "%ips%"=="3" goto 3IP
if "%ips%"=="4" goto 4IP
if "%ips%"=="5" goto 5IP
echo The maximum amount of IPS to ping is 5.
timeout /t 2 >nul
cls
goto Input

:1IP
set /p firstfirstip=First IP:
goto Ping1

:Ping1
START cmd /k ping %firstfirstip% /t
goto end

:2IP
set /p secondfirstip=First IP:
set /p secondsecondip=Second IP:
goto Ping2

:Ping2
START cmd /k ping %secondfirstip% /t
START cmd /k ping %secondsecondip% /t
goto end

:3IP
set /p thirdfirstip=First IP:
set /p thirdsecondip=Second IP:
set /p thirdthirdip=Third IP:
goto Ping3

:Ping3
START cmd /k ping %thirdfirstip% /t
START cmd /k ping %thirdsecondip% /t
START cmd /k ping %thirdthirdip% /t
goto end

:4IP
set /p fourthfirstip=First IP:
set /p fourthsecondip=Second IP:
set /p fourththirdip=Third IP:
set /p fourthfourthip=Fourth IP:
goto Ping4

:Ping4
START cmd /k ping %fourthfirstip% /t
START cmd /k ping %fourthsecondip% /t
START cmd /k ping %fourththirdip% /t
START cmd /k ping %fourthfourthip% /t
goto end

:5IP
set /p fifthfirstip=First IP:
set /p fifthsecondip=Second IP:
set /p fifththirdip=Third IP:
set /p fifthfourthip=Fourth IP:
set /p fifthfifthip=Fifth IP:
goto Ping5

:Ping5
START cmd /k ping %fifthfirstip% /t
START cmd /k ping %fifthsecondip% /t
START cmd /k ping %fifththirdip% /t
START cmd /k ping %fifthfourthip% /t
START cmd /k ping %fifthfifthip% /t
goto end

:end
echo All pings are running, press any key to refresh tool.
goto Input