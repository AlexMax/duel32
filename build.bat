@ECHO OFF

SET RELEASE=f

CD %~dp0
MKDIR build
XCOPY wadsrc build /s /y
CD build
..\bin\zip.exe -r ..\duel32%RELEASE%.pk3 .
CD ..
