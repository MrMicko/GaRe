d:
cd progs\GlovePIE045Free\omat\GaRe
REM EnablePedals.lnk
start "" /High ..\..\piefree.exe -GameAD.pie  /tray
start "" /High ..\..\piefree.exe -GameMouse_HYDRA_V5_B1.pie  /tray
start "" /High ..\..\piefree.exe -ForcedW.pie  /tray
timeout 1
start ..\..\piefree.exe -Sensitivity-1-RunDisabled.pie  /tray
Choice /M "Kill Pies?"
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