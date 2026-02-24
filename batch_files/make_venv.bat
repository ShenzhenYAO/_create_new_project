@echo off
setlocal

for /f "usebackq delims=" %%A in (`powershell -NoProfile -Command "(Get-CimInstance Win32_ComputerSystem).Manufacturer"`) do set "BRAND_RAW=%%A"
for /f "usebackq delims=" %%A in (`powershell -NoProfile -Command "(Get-CimInstance Win32_ComputerSystem).Model"`) do set "MODEL_RAW=%%A"

for /f "usebackq delims=" %%A in (`powershell -NoProfile -Command "$env:BRAND_RAW.Trim()"`) do set "BRAND=%%A"
for /f "usebackq delims=" %%A in (`powershell -NoProfile -Command "$env:MODEL_RAW.Trim()"`) do set "MODEL=%%A"

echo Machine brand: %BRAND_RAW%
echo Machine model: %MODEL_RAW%

if /I "%BRAND%"=="lenovo" (
    if /I "%MODEL%"=="p5" (
        C:\Users\syao2\AppData\Local\Programs\Python\Python310\python.exe -m venv venv_windows_py310_01
        goto :eof
    )
)

if /I "%BRAND%"=="dell inc." (
    "C:\Program Files\Python310\python.exe" -m venv venv_windows_py310_01
    goto :eof
)

echo No matching machine rule found. Virtual environment was not created.
