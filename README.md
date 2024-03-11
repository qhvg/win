[Go to repository](https://github.com/qhvg/win)
## qhvg/win
Batch script I made just in case I would have to setup a new Windows 10 install.

## Features

- Microsoft Activation Scripts by [massgrave](https://github.com/massgravel)
- Downloadable software from Malwarewatch
  - VEGAS Pro
  - Adobe Products
  - Useful software
- Various registry fixes
  - FolderType registry fix (improves disk performance)
  - Show Windows version on desktop
- Download Winaero Tweaker using curl

More stuff will be added later.

**Files will be downloaded to current directory (ex. if you run the script at `C:\Users\Administrator\Desktop`, the files will be downloaded there). Same goes to the script itself, when using the Powershell method.**

## How to run?
### Method 1 - Powershell
`irm https://qhvg.github.io/win/get.ps1 | iex`
### Method 2 - Batchfile/Traditional
- Download [main.bat](https://github.com/qhvg/win/blob/main/main.bat) and run
