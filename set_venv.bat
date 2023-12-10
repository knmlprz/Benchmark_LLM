@echo off

REM Check if the virtual environment directory exists
IF NOT EXIST "venv" (
    echo Creating virtual environment...
    python -m venv venv
    echo Virtual environment created.

    CALL venv\Scripts\activate.bat
    IF %ERRORLEVEL% EQU 0 (
        echo Virtual environment activated.

        REM Upgrade pip in the virtual environment
        python -m pip install --upgrade pip

        REM Install a specific version of Poetry
        python -m pip install poetry==1.1.4
        echo Poetry has been installed.

        REM Install dependencies using Poetry
        poetry install
    ) ELSE (
        echo Failed to activate virtual environment.
    )
) ELSE (
    echo Virtual environment already exists.
)
