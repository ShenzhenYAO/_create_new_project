@echo off
powershell -NoExit -Command "Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force; & '.\venv_windows_py310_01\Scripts\Activate.ps1'"
echo PowerShell execution policy set to Bypass for the process and virtual environment activated.
