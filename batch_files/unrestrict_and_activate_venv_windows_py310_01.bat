@REM @echo off
powershell -NoExit -Command "Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force; & '.\venv_windows_py310_01\Scripts\Activate.ps1'"
echo PowerShell execution policy set to Bypass for the process and virtual environment activated.
@REM @REM python -m pip install --upgrade pip
@REM @REM pip install nbformat ipynbname
@REM @REM pip install --upgrade ipywidgets jupyter


@REM @echo off
@REM REM Use 'call' to run the activation script and return to the batch flow
@REM call ".\venv_windows_py310_01\Scripts\activate.bat"

@REM echo Virtual environment activated.
@REM python -m pip install --upgrade pip
@REM pip install nbformat ipynbname
@REM pip install --upgrade ipywidgets jupyter
