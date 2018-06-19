@echo off

setlocal

call %~dp0_vars.bat

echo:
echo Running install...
"%SOFTWARE_ROOT%\%INSTALLER_PATH%"^
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
 --includeRecommended --noWeb --nocache --wait

endlocal

pause
