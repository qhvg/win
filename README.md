[Go to repository](https://github.com/qhvg/win)
## qhvg/win
Batch script I made just in case I would have to setup a new Windows 10 install.

## Features

- Microsoft Activation Scripts by [massgrave](https://github.com/massgravel)
- Downloadable software from Malwarewatch
  - VEGAS Pro
  - Adobe After Effects, Photoshop, Premiere Pro
  - Various useful stuff
- Various registry fixes
  - FolderType registry fix (improves disk performance)
  - Show Windows version on desktop
- Download Winaero Tweaker using curl

More stuff will be added later.

**Software will be downloaded to current user's Downloads folder. `main.bat` and MAS will be temporarily downloaded to `%Temp%`.**

## How to run?
### Method 1 - Powershell
`irm qhvg.github.io/win/get.ps1 | iex`
### Method 2 - Batchfile/Traditional
- Download [main.bat](https://github.com/qhvg/win/blob/main/main.bat) and run
