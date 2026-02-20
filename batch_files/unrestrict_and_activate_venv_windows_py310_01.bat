@REM @echo off
@REM powershell -NoExit -Command "Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force; & '.\venv_windows_py310_01\Scripts\Activate.ps1'"
@REM echo PowerShell execution policy set to Bypass for the process and virtual environment activated.
@REM python -m pip install --upgrade pip
@REM pip install nbformat ipynbname
@REM pip install --upgrade ipywidgets jupyter


@echo off
REM Use 'call' to run the activation script and return to the batch flow
call ".\venv_windows_py310_01\Scripts\activate.bat"

echo Virtual environment activated.
python -m pip install --upgrade pip
pip install nbformat ipynbname
pip install --upgrade ipywidgets jupyter
