@echo off

rem ==============================================
rem SETUP & COLOR VARIABLES
rem ==============================================

set COLOR_RED=[31m>nul
set COLOR_BRIGHTRED=[1;31m>nul

set COLOR_YELLOW=[33m>nul
set COLOR_BRIGHTYELLOW=[1;33m>nul

set COLOR_GREEN=[32m>nul
set COLOR_BRIGHTGREEN=[1;32m>nul

set COLOR_RESET=[0m>nul

echo %COLOR_RESET%

title qhvg/win

set DownloadPath="%userprofile%\Downloads"

rem ==============================================
rem MAIN MENU
rem ==============================================

mode con: cols=96 lines=36

:main
cls
echo.
echo [A] Microsoft Activation Scripts
echo [B] Software
echo [C] Registry Fixes/Hacks
echo [D] Download Winaero Tweaker
echo.
echo [E] Exit
echo.

choice /c:ABCDE /n /m "> "

if %errorlevel% == 1 goto mas
if %errorlevel% == 2 goto software
if %errorlevel% == 3 goto registry
if %errorlevel% == 4 curl https://winaerotweaker.com/download/winaerotweaker.zip --output %DownloadPath%\winaerotweaker.zip
if %errorlevel% == 5 goto exit
echo %COLOR_BRIGHTGREEN%Done! Press any key to continue.%COLOR_RESET%
pause > nul
goto main

rem ==============================================
rem MICROSOFT ACTIVATION SCRIPTS
rem ==============================================

:mas
curl https://raw.githubusercontent.com/massgravel/Microsoft-Activation-Scripts/master/MAS/All-In-One-Version/MAS_AIO-CRC32_9AE8AFBA.cmd --output %Temp%\MAS.cmd
call %Temp%\MAS.cmd
echo Press any key to continue.
del %Temp%\MAS.cmd
goto main

rem ==============================================
rem REGISTRY HACKS
rem ==============================================

:registry
cls
echo.
echo [A] FolderType Registry Fix - Changes FolderType to "NotSpecified", improves disk performance.
echo [B] Show Windows version on Desktop (will restart Explorer shell)
echo.
echo [C] Return to menu
echo [D] Exit
echo.

choice /c:ABCD /n /m "> "

if %errorlevel% == 1 reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell" /v "FolderType" /t REG_SZ /d "NotSpecified"
if %errorlevel% == 2 goto showwinver
if %errorlevel% == 3 goto main
if %errorlevel% == 4 goto exit
echo %COLOR_BRIGHTGREEN%Done! Press any key to continue.%COLOR_RESET%
pause > nul
goto registry

:showwinver
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d 1
echo Done! Restarting explorer shell.
taskkill /f /im explorer.exe
call explorer
goto registry

rem ==============================================
rem WINDOWS SOFTWARE
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

if %errorlevel% == 1 goto software_a
if %errorlevel% == 2 goto software_b
if %errorlevel% == 3 goto main
if %errorlevel% == 4 goto exit

rem ==============================================
rem WINDOWS SOFTWARE SUBCATEGORIES
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

if %errorlevel% == 1 curl https://dl.malwarewatch.org/software/useful/media/vegas/VEGASPro20.7z --output %DownloadPath%\VEGASPro20.7z
if %errorlevel% == 2 curl https://dl.malwarewatch.org/software/useful/media/vegas/VEGASPro16.7z --output %DownloadPath%\VEGASPro16.7z
if %errorlevel% == 3 curl https://dl.malwarewatch.org/software/useful/media/vegas/VEGASPro21-Suite.7z --output %DownloadPath%\VEGASPro21-Suite.7z
if %errorlevel% == 4 curl https://dl.malwarewatch.org/software/useful/media/vegas/VEGASPro8.7z --output %DownloadPath%\VEGASPro8.7z
if %errorlevel% == 5 curl https://dl.malwarewatch.org/software/useful/media/adobe/AfterEffects2022.iso --output %DownloadPath%\AfterEffects2022.iso
if %errorlevel% == 6 curl https://dl.malwarewatch.org/software/useful/media/adobe/AfterEffects2023-23.4.0.53.iso --output %DownloadPath%\AfterEffects2023-23.4.0.53.iso
if %errorlevel% == 7 curl https://dl.malwarewatch.org/software/useful/media/adobe/Photoshop2022.iso --output %DownloadPath%\Photoshop2022.iso
if %errorlevel% == 8 curl https://dl.malwarewatch.org/software/useful/media/adobe/Photoshop2023-24.6.0.573%2BFireflyAI.7z --output %DownloadPath%\Photoshop2023-24.6.0.573%2BFireflyAI.7z
if %errorlevel% == 9 curl https://dl.malwarewatch.org/software/useful/media/adobe/PremierePro2022.iso --output %DownloadPath%\PremierePro2022.iso
if %errorlevel% == 10 curl https://dl.malwarewatch.org/software/useful/media/adobe/PremierePro2023-23.4.0.56.iso --output %DownloadPath%\PremierePro2023-23.4.0.56.iso
if %errorlevel% == 11 goto software
if %errorlevel% == 12 goto main
if %errorlevel% == 13 goto exit
echo %COLOR_BRIGHTGREEN%Done! Press any key to continue.%COLOR_RESET%
pause > nul
goto software_a

:software_b
cls
echo.
echo Software provided by dl.malwarewatch.org
echo Website owned by Enderman(ch)
echo Password: mysubsarethebest
curl https://dl.malwarewatch.org/api/v1/ratelimit_info
echo.
echo.
echo [A] Process Hacker
echo 	Useful for elevation to NT AUTHORITY\SYSTEM. Can be used for the sethc.exe exploit.
echo [B] AIDA64
echo [C] Uninstall Tool
echo [D] Uninstall Edge
echo [E] Rufus (4.3)
echo 	Bootable Windows USB drives.
echo [F] balenaEtcher x86/64 Portable
echo 	Bootable Linux USB drives.
echo [G] BootData
echo [H] FileShredder
echo.
echo [I] Return to Software
echo [J] Return to menu
echo [K] Exit
echo.

choice /c:ABCDEFGHIJK /n /m "> "

if %errorlevel% == 1 curl https://dl.malwarewatch.org/software/advanced/ProcessHacker.7z --output %DownloadPath%\ProcessHacker.7z
if %errorlevel% == 2 curl https://dl.malwarewatch.org/software/useful/AIDA64.7z --output %DownloadPath%\AIDA64.7z
if %errorlevel% == 3 curl https://dl.malwarewatch.org/software/useful/UninstallTool.7z --output %DownloadPath%\UninstallTool.7z
if %errorlevel% == 4 curl https://dl.malwarewatch.org/software/features/UninstallEdge.7z --output %DownloadPath%\UninstallEdge.7z
if %errorlevel% == 5 curl https://dl.malwarewatch.org/software/advanced/Rufus-4.3.7z --output %DownloadPath%\Rufus-4.3.7z
if %errorlevel% == 6 curl https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-Portable-1.18.11.exe --output %DownloadPath%\balenaEtcher-Portable-1.18.11.exe
if %errorlevel% == 7 curl https://dl.malwarewatch.org/software/advanced/BootData.7z --output %DownloadPath%\BootData.7z
if %errorlevel% == 8 curl https://dl.malwarewatch.org/software/advanced/FileShredder.7z --output %DownloadPath%\FileShredder.7z
if %errorlevel% == 9 goto software
if %errorlevel% == 10 goto main
if %errorlevel% == 11 goto exit
echo %COLOR_BRIGHTGREEN%Done! Press any key to continue.%COLOR_RESET%
pause > nul
goto software_b

:exit
echo Clearing variables...
set DownloadsPath=
set COLOR_RED=
set COLOR_BRIGHTRED=
set COLOR_YELLOW=
set COLOR_BRIGHTYELLOW=
set COLOR_GREEN=
set COLOR_BRIGHTGREEN=
set COLOR_RESET=
cls
