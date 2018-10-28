@ECHO OFF

SET RELEASE=b

CD %~dp0
MKDIR build
XCOPY /s /y /exclude:exclude.txt wadsrc build
CD build
MKDIR acs
..\bin\acc.exe scripts\GLOBAL.acs acs\GLOBAL.o
IF errorlevel 1 (
	PAUSE
	exit /b 1
)
..\bin\zip.exe -r ..\duel40%RELEASE%-debug.pk3 .
CD ..
