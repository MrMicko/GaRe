d:
cd progs\GlovePIE045Free\omat
REM EnablePedals.lnk
start ..\piefree.exe -GameWASD_v5_b1.pie  /tray
start ..\piefree.exe -GameMouse_HYDRA_V5_B1.pie  /tray
timeout 2
start ..\piefree.exe -Sensitivity0.pie
Choice /M "Disable pedals and kill Pies?"
If Errorlevel 2 Goto No
If Errorlevel 1 Goto Yes
Goto End
:No
Goto End
:Yes
REM DisablePedals.lnk
KillPie.lnk
Goto End
:End

exit