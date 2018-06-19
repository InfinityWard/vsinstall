@echo off

setlocal

call %~dp0_vars.bat

echo:
echo Running Visual Studio install...
"%SOFTWARE_ROOT%\%INSTALLER_PATH%" /finalizeInstall^
 --add "Microsoft.VisualStudio.Workload.ManagedDesktop"^
 --add "Microsoft.VisualStudio.Workload.NativeDesktop"^
 --add "Microsoft.VisualStudio.Workload.NativeGame"^
 --add "Microsoft.VisualStudio.Workload.Office"^
 --add "Microsoft.VisualStudio.Workload.Universal"^
 --add "Microsoft.VisualStudio.Component.VC.CLI.Support"^
 --add "Microsoft.VisualStudio.Component.VC.140"^
 --add "Microsoft.VisualStudio.Component.Windows10SDK.14393"^
 --add "Microsoft.VisualStudio.Component.Windows10SDK.15063.Desktop"^
 --add "Microsoft.VisualStudio.Component.Windows10SDK.16299.Desktop"^
 --add "Microsoft.VisualStudio.Component.Windows81SDK"^
 --add "Microsoft.VisualStudio.Component.VC.ATLMFC"^
 --includeRecommended --noWeb --nocache --channelUri "C:\doesntExist.chman" --wait

if not exist "%ProgramFiles(x86)%\Microsoft Visual Studio\2017\Professional\VC\Auxiliary\Build\vcvars64.bat" goto DONE

echo:
echo Loading console environment...
call "%ProgramFiles(x86)%\Microsoft Visual Studio\2017\Professional\VC\Auxiliary\Build\vcvars64.bat"

echo:
echo Disable update checking...
VsRegEdit.exe set "c:\Program Files (x86)\Microsoft Visual Studio\2017\Professional" HKCU ExtensionManager AutomaticallyCheckForUpdates2 dword 0

:DONE

endlocal

pause
