@ECHO OFF

SET RELEASE=f

CD %~dp0
MKDIR build
XCOPY wadsrc build /s /y
CD build
MKDIR acs
..\bin\acc.exe scripts\GLOBAL.acs acs\GLOBAL.o
if errorlevel 1 (
	pause
	exit /b 1
)
..\bin\zip.exe -r ..\duel32%RELEASE%.pk3 .
CD ..
