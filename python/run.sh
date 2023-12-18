#!/bin/env bash

if [ ! -d "venv" ]; then
    mkdir venv
fi

echo "Creating virtual environment..."

python3 -m venv venv
source venv/bin/activate

# install requirements
if command -v pip3 &>/dev/null; then
    pip3 install -r requirements.txt
else
    echo "No pip3 found."
    exit 1
fi

# run python scripts
if ls -- *.py 1> /dev/null 2>&1; then
    for file in *.py
    do
        if command -v python3 &>/dev/null; then
            echo "Running $file..."
            python3 "$file" quiet savepdf
        else
            echo "No python3 interpreter found."
            exit 1
        fi
    done
fi

# deactivate virtual environment
deactivate
