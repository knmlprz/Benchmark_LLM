#!/bin/bash

# Creates a virtual environment if it does not exist
if [ ! -d "venv" ] 
then
    python3 -m venv venv
    echo "Virtual environment created."
fi
#pgrade pip
pip install --upgrade pip

# Activates the virtual environment
source venv/bin/activate

# Installs Poetry
pip install poetry

echo "Poetry has been installed."

# Install dependencies using Poetry
poetry install

echo "Dependencies installed."
