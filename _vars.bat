@echo off

rem https://support.microsoft.com/en-us/help/889815/the-open-file---security-warning-dialog-box-is-displayed-when-you-try
set SEE_MASK_NOZONECHECKS=1

rem change this when updating the installer exe
set VERSION=15.7.3

rem relpath within your software cache to the installer
set INSTALLER_PATH=vs2017\%VERSION%\vs_Professional.exe

rem the location of your software cache
set SOFTWARE_ROOT=

:DONE