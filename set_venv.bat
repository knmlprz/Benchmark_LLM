@echo off
SETLOCAL

:: Function to handle errors
CALL :handle_error

:: Creates a virtual environment if it does not exist
IF NOT EXIST venv (
    python -m venv venv
    echo Virtual environment created.
) ELSE (
    echo Virtual environment already exists.
)

:: Activate the virtual environment
CALL venv\Scripts\activate.bat
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to activate virtual environment.
    EXIT /B 1
)

:: Upgrade pip
pip install --upgrade pip
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to upgrade pip.
    EXIT /B 1
)

:: Installs Poetry
pip install poetry==1.7.1
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to install Poetry.
    EXIT /B 1
)

:: Install dependencies using Poetry
poetry install
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to install dependencies with Poetry.
    EXIT /B 1
)

echo Setup complete.
EXIT /B 0

:handle_error
IF %ERRORLEVEL% NEQ 0 (
    echo An error occurred.
    EXIT /B 1
)
GOTO :EOF
