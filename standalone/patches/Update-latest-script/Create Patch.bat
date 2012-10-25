@ECHO OFF
title Technic Patch Maker

:new
set /P newversion=What is the new version of Minecraft: %=%
if "%newversion%"=="" goto new


java -classpath diff.jar ie.wombat.jbdiff.JBDiff minecraft_%newversion%.jar 1.0.0.jar latest.patch
echo Done
pause
Exit