#!/bin/bash

# Creates a virtual environment if it does not exist
if [ ! -d "venv" ] 
then
    python3 -m venv venv
    echo "Virtual environment created."

    # Upgrade pip
    pip install --upgrade pip

    # Activates the virtual environment
    source venv/bin/activate

    if [ $? -eq 0 ]; then
        echo "Virtual environment activated."

            # Upgrade pip in virtual environment
            pip install --upgrade pip

            # Installs Poetry
            pip install poetry==1.1.4


            echo "Poetry has been installed."

            # Install dependencies using Poetry
            poetry install.
    else
        echo "Virtual environment failed to activate."
    fi
    
else
    echo "Virtual environment already exists."
fi