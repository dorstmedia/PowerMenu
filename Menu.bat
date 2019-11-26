@echo off
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b
title POWER MENU
:menu
cls
Set /a num=(%Random% %%9)+1
color %num%
Echo.
echo 						WELCOME %Username%
Echo.
Echo  Choose An Option..
Echo.
Echo  1.  LogOff (Sign Out From Current User)
Echo.
Echo  2.  Reboot (Complete Restart)
Echo.
Echo  3.  Shutdown (Turn Off Computer)
Echo.
Echo  4.  Hibernate (May Not Work)
Echo.
Echo  5.  Shutdown After 15 Minutes
Echo.
Echo  6.  Shutdown After 30 Minutes (Current TIME Is: %time%)
Echo.
Echo  7.  Shutdown After 60 Minutes (1 Hour)
Echo.
Echo  8.  Stop Shutdown Timer (Only Works When Option 5, 6 or 7 Selected Before)
Echo.
Echo  9.  Advance Boot Options (This Option Will Take You To TroubleShoot Menu)
Echo.
Echo  10. Exit
Echo.

SET /p Option= Enter Your Option: 

IF %Option%==1  SHUTDOWN /l
IF %Option%==2  SHUTDOWN /r /t 05 /c "RESTARTING"
IF %Option%==3  SHUTDOWN /s /f /t 05 /c "Thank You For Giving Me Rest"
IF %Option%==4  SHUTDOWN /h /f
IF %Option%==5  SHUTDOWN /s /f /t 900
IF %Option%==6  SHUTDOWN /s /f /t 1800
IF %Option%==7  SHUTDOWN /s /f /t 3600
IF %Option%==8  SHUTDOWN /a
IF %Option%==9  SHUTDOWN /o /r /f /t 05 /c "Going To Boot Menu Bye. ."
IF %Option%==10 goto end
goto menu
:end
exit
