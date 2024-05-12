@echo off

rem ==============================================
rem SETUP & COLOR VARIABLES
rem ==============================================

set qhvg_win_COLOR_RED=[31m>nul
set qhvg_win_COLOR_BRIGHTRED=[1;31m>nul

set qhvg_win_COLOR_YELLOW=[33m>nul
set qhvg_win_COLOR_BRIGHTYELLOW=[1;33m>nul

set qhvg_win_COLOR_GREEN=[32m>nul
set qhvg_win_COLOR_BRIGHTGREEN=[1;32m>nul

set qhvg_win_COLOR_RESET=[0m>nul

echo %COLOR_RESET%

title qhvg/win

set qhvg_win_DownloadPath="%userprofile%\Downloads"

rem ==============================================
rem MAIN MENU
rem ==============================================

mode con: cols=96 lines=36

:main
cls
echo.
echo [A] Microsoft Activation Scripts
echo [B] Software
echo [C] Registry
echo [D] Download Winaero Tweaker
echo [E] Download Sophia Script for Windows 10 [5.18.2]
echo.
echo [F] Exit
echo.

choice /c:ABCDEF /n /m "> "

echo.
if %errorlevel% == 1 goto mas
if %errorlevel% == 2 goto software
if %errorlevel% == 3 goto registry
if %errorlevel% == 4 curl https://winaerotweaker.com/download/winaerotweaker.zip -o %qhvg_win_DownloadPath%\winaerotweaker.zip
if %errorlevel% == 5 curl https://github.com/farag2/Sophia-Script-for-Windows/releases/download/6.6.2/Sophia.Script.for.Windows.10.v5.18.2.zip -o %qhvg_win_DownloadPath%\Sophia.Script.for.Windows.10.v5.18.2.zip
if %errorlevel% == 6 goto exit
echo.
echo %qhvg_win_COLOR_BRIGHTGREEN%Done! Press any key to continue.%qhvg_win_COLOR_RESET%
pause > nul
goto main

rem ==============================================
rem MICROSOFT ACTIVATION SCRIPTS
rem ==============================================

:mas
curl https://raw.githubusercontent.com/massgravel/Microsoft-Activation-Scripts/master/MAS/All-In-One-Version/MAS_AIO-CRC32_9AE8AFBA.cmd --output %Temp%\MAS.cmd
call %Temp%\MAS.cmd
echo If finished, press any key to continue.
del %Temp%\MAS.cmd
goto main

rem ==============================================
rem REGISTRY
rem ==============================================

:registry
cls
echo.
echo [A] FolderType Registry Fix - Changes FolderType to "NotSpecified", improves disk performance.
echo [B] Disable Bing Search (shell restart required)
echo [C] Show Windows version on Desktop (shell restart required)
echo.
echo [D] Return to menu
echo [E] Exit
echo.

choice /c:ABCD /n /m "> "

echo.
if %errorlevel% == 1 reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell" /v "FolderType" /t REG_SZ /d "NotSpecified"
if %errorlevel% == 2 goto showwinver
if %errorlevel% == 3 goto disablebing
if %errorlevel% == 4 goto main
if %errorlevel% == 5 goto exit
echo.
echo %qhvg_win_COLOR_BRIGHTGREEN%Done! Press any key to continue.%qhvg_win_COLOR_RESET%
pause > nul
goto registry

:disablebing
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_DWORD /d 0
echo %qhvg_win_COLOR_BRIGHTGREEN%Done! Restart explorer shell to see changes.%qhvg_win_COLOR_BRIGHTGREEN%
echo %qhvg_win_COLOR_BRIGHTGREEN%taskkill /f /im explorer.exe && explorer%qhvg_win_COLOR_BRIGHTGREEN%
pause
goto registry

:showwinver
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 1
echo %qhvg_win_COLOR_BRIGHTGREEN%Done! Restart explorer shell to see changes.%qhvg_win_COLOR_BRIGHTGREEN%
echo %qhvg_win_COLOR_BRIGHTGREEN%taskkill /f /im explorer.exe && explorer%qhvg_win_COLOR_BRIGHTGREEN%
pause
goto registry

rem ==============================================
rem SOFTWARE
rem ==============================================

:software
cls
echo.
echo [A] A - Editing Software
echo [B] B - Tech Stuff
echo.
echo [C] Return to menu
echo [D] Exit
echo.

choice /c:ABCDE /n /m "> "

echo.
if %errorlevel% == 1 goto software_a
if %errorlevel% == 2 goto software_b
if %errorlevel% == 3 goto main
if %errorlevel% == 4 goto exit

rem ==============================================
rem SOFTWARE SUBCATEGORIES
rem ==============================================

:software_a
cls
echo.
echo Software provided by dl.malwarewatch.org
echo Website owned by Enderman(ch)
echo Password: mysubsarethebest
curl https://dl.malwarewatch.org/api/v1/ratelimit_info
echo.
echo.
echo [A] Sony Vegas 20 (305.6 MiB) [7z]
echo [B] Sony Vegas 16 (533.0 MiB) [7z]
echo [C] Sony Vegas 21 Suite (1.3 GiB) [7z]
echo [D] Sony Vegas 8 (108.6 MiB) [7z]
echo [E] Adobe After Effects 2022 (2.8 GiB) [iso]
echo [F] Adobe After Effects 2023 23.4.0.53 (3.1 GiB) [iso]
echo [G] Adobe Photoshop 2022 (3.0 GiB) [iso]
echo [H] Adobe Photoshop 2023 24.6.0.573 + Firefly (4.1 GiB) [7z]
echo [I] Adobe Premiere Pro 2022 (1.9 GiB) [iso]
echo [J] Adobe Premiere Pro 2023 23.4.0.56 (2.0 GiB) [iso]
echo.
echo [K] Return to Software
echo [L] Return to menu
echo [M] Exit
echo.

choice /c:ABCDEFGHIJKLM /n /m "> "

echo.
if %errorlevel% == 1 curl https://dl.malwarewatch.org/software/useful/media/vegas/VEGASPro20.7z --output %qhvg_win_DownloadPath%\VEGASPro20.7z
if %errorlevel% == 2 curl https://dl.malwarewatch.org/software/useful/media/vegas/VEGASPro16.7z --output %qhvg_win_DownloadPath%\VEGASPro16.7z
if %errorlevel% == 3 curl https://dl.malwarewatch.org/software/useful/media/vegas/VEGASPro21-Suite.7z --output %qhvg_win_DownloadPath%\VEGASPro21-Suite.7z
if %errorlevel% == 4 curl https://dl.malwarewatch.org/software/useful/media/vegas/VEGASPro8.7z --output %qhvg_win_DownloadPath%\VEGASPro8.7z
if %errorlevel% == 5 curl https://dl.malwarewatch.org/software/useful/media/adobe/AfterEffects2022.iso --output %qhvg_win_DownloadPath%\AfterEffects2022.iso
if %errorlevel% == 6 curl https://dl.malwarewatch.org/software/useful/media/adobe/AfterEffects2023-23.4.0.53.iso --output %qhvg_win_DownloadPath%\AfterEffects2023-23.4.0.53.iso
if %errorlevel% == 7 curl https://dl.malwarewatch.org/software/useful/media/adobe/Photoshop2022.iso --output %qhvg_win_DownloadPath%\Photoshop2022.iso
if %errorlevel% == 8 curl https://dl.malwarewatch.org/software/useful/media/adobe/Photoshop2023-24.6.0.573%2BFireflyAI.7z --output %qhvg_win_DownloadPath%\Photoshop2023-24.6.0.573%2BFireflyAI.7z
if %errorlevel% == 9 curl https://dl.malwarewatch.org/software/useful/media/adobe/PremierePro2022.iso --output %qhvg_win_DownloadPath%\PremierePro2022.iso
if %errorlevel% == 10 curl https://dl.malwarewatch.org/software/useful/media/adobe/PremierePro2023-23.4.0.56.iso --output %qhvg_win_DownloadPath%\PremierePro2023-23.4.0.56.iso
if %errorlevel% == 11 goto software
if %errorlevel% == 12 goto main
if %errorlevel% == 13 goto exit
echo.
echo %qhvg_win_COLOR_BRIGHTGREEN%Done! Press any key to continue.%qhvg_win_COLOR_RESET%
pause > nul
goto software_a

:software_b
cls
echo.
echo [A] Process Hacker [2.39, Portable]
echo [B] HWInfo [7.72, Portable, US Mirror]
echo [C] Uninstall Tool [Malwarewatch]
echo [D] Uninstall Microsoft Edge [Malwarewatch]
echo [E] Rufus [4.4, Portable]
echo [F] balenaEtcher [1.18.11, Portable]
echo [G] FileShredder [-, Setup]
echo [H] Ventoy [1.0.97, Sourceforge]
echo [I] CrystalDiskInfo [9.2.3, Sourceforge, Standard Ver.]
echo [J] CrystalDiskMark [8.0.5, Sourceforge, Standard Ver.]
echo.
echo [K] Return to Software
echo [L] Return to menu
echo [M] Exit
echo.

choice /c:ABCDEFGHIJKLM /n /m "> "

echo.
if %errorlevel% == 1 curl https://sourceforge.net/projects/processhacker/files/processhacker2/processhacker-2.39-bin.zip/download --output %qhvg_win_DownloadPath%\ProcessHacker.7z
if %errorlevel% == 2 curl https://www.hwinfo.com/files/hwi_772.zip --output %qhvg_win_DownloadPath%\hwi_772.zip
if %errorlevel% == 3 curl https://dl.malwarewatch.org/software/useful/UninstallTool.7z --output %qhvg_win_DownloadPath%\UninstallTool.7z
if %errorlevel% == 4 curl https://dl.malwarewatch.org/software/features/UninstallEdge.7z --output %qhvg_win_DownloadPath%\UninstallEdge.7z
if %errorlevel% == 5 curl https://github.com/pbatard/rufus/releases/download/v4.4/rufus-4.4p.exe --output %qhvg_win_DownloadPath%\Rufus-4.3.7z
if %errorlevel% == 6 curl https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-Portable-1.18.11.exe --output %qhvg_win_DownloadPath%\balenaEtcher-Portable-1.18.11.exe
if %errorlevel% == 7 curl https://www.fileshredder.org/files/file_shredder_setup.exe --output %qhvg_win_DownloadPath%\FileShredder.7z
if %errorlevel% == 8 curl -L https://sourceforge.net/projects/ventoy/files/v1.0.97/ventoy-1.0.97-windows.zip/download -o %qhvg_win_DownloadPath%\ventoy-1.0.97-windows.zip
if %errorlevel% == 9 curl -L https://altushost-swe.dl.sourceforge.net/project/crystaldiskinfo/9.2.3/CrystalDiskInfo9_2_3.exe -o %qhvg_win_DownloadPath%\CrystalDiskInfo9_2_3.exe
if %errorlevel% == 10 curl -L https://netcologne.dl.sourceforge.net/project/crystaldiskmark/8.0.5/CrystalDiskMark8_0_5.exe -o %qhvg_win_DownloadPath%\CrystalDiskMark8_0_5.exe
if %errorlevel% == 11 goto software
if %errorlevel% == 12 goto main
if %errorlevel% == 13 goto exit
echo.
echo %qhvg_win_COLOR_BRIGHTGREEN%Done! Press any key to continue.%qhvg_win_COLOR_RESET%
pause > nul
goto software_b

rem ==============================================
rem END
rem ==============================================

:exit
echo Clearing variables...
set qhvg_win_DownloadsPath=
set qhvg_win_COLOR_RED=
set qhvg_win_COLOR_BRIGHTRED=
set qhvg_win_COLOR_YELLOW=
set qhvg_win_COLOR_BRIGHTYELLOW=
set qhvg_win_COLOR_GREEN=
set qhvg_win_COLOR_BRIGHTGREEN=
set qhvg_win_COLOR_RESET=
cls
