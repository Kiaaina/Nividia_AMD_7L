cd /
:top
cls
@cecho off
title "Force_7L"
mod con: lines=4 cols=20

@set "nividia=516412516341"
@set "amd=516432178914"

cecho {06}1=nividia{/h}{02}2=AMD{04}
set /a m=choose;

if (%m%=1) & goto nividia;
if (%m%=2) & goto amd;
goto top

:nividia
copy "%nividia% ./nividia2.iso"
goto 7L
:amd
copy "%amd% ./amd2.iso"
goto 7L

:7L
cecho {09}By_Kia7L{02}
timeout /t 5
goto top
