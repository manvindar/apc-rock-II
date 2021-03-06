@echo off
REM Setup environment variables for Visual C++ 1.52c 16 bit edition

if .%CHECKED%==.1 goto checked_build
set LIB=%SCITECH_LIB%\LIB\RELEASE\DOS16\VC6;%VC_PATH%\LIB;.
echo Release build enabled.
goto setvars

:checked_build
set LIB=%SCITECH_LIB%\LIB\DEBUG\DOS16\VC6;%VC_PATH%\LIB;.
echo Checked debug build enabled.
goto setvars

:setvars
set TOOLROOTDIR=%VC_PATH%
set INCLUDE=.;INCLUDE;%SCITECH%\INCLUDE;%PRIVATE%\INCLUDE;%VC_PATH%\INCLUDE;
set INIT=%VC_PATH%
SET MAKESTARTUP=%SCITECH%\MAKEDEFS\VC16.MK
SET USE_WIN16=
SET USE_WIN32=
SET USE_RTTARGET=
SET USE_SNAP=
SET VC_LIBBASE=vc6
PATH %SCITECH_BIN%;%VC_PATH%\BIN;%DEFPATH%%VC_CD_PATH%

echo Visual C++ 1.52c 16-bit DOS compilation environment set up.
