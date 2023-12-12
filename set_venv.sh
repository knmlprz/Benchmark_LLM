#!/bin/bash
set -e

handle_error() {
    echo "An error occurred on line $1"
    exit 1
}

trap 'handle_error $LINENO' ERR


# Creates a virtual environment if it does not exist
if [ ! -d "venv" ]; then
    python3 -m venv venv
    echo "Virtual environment created."

    # Upgrade pip
    pip install --upgrade pip

    # Activate the virtual environment
    # This warning comes from the script's inability to track files
    # shellcheck disable=SC1091
    source venv/bin/activate

    echo "Virtual environment activated."

    # Upgrade pip in virtual environment
    
    pip install --upgrade pip

    # Installs Poetry
    pip install poetry==1.7.1


    echo "Poetry has been installed."

    # Install dependencies using Poetry
    poetry install
    
else
    echo "Virtual environment already exists."
fi