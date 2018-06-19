
Install/Modify scripts for visual studio 2017, some things to keep in mind:
* To upgrade beyond a version installed by these scripts you need to uninstall vs2017 _and_ `Microsoft Visual Studio Installer`
* There is a hard coded set of components and workloads that are mostly appropriate to console game and tools development

## `_vars.bat`

Configuration variables

## `download_vs2017.bat`

Download a full "layout" of the install files necessary to install/modify Visual Studio 2017

## `install_vs2017.bat`

Invoke the installer affixed to the "layout" files accessible to these scripts (no slipstreamed updates)

## `modify_vs2017.bat`

Similar to install, but land in the modify dialog instead of barrelling through the install with specific components