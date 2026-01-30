#!/bin/bash

PROJECT_DIR="/home/ubuntu/ec2-deployment"
VENV_DIR="$PROJECT_DIR/venv"

cd $PROJECT_DIR || exit 1

echo "Creating venv if not exists..."
python3 -m venv $VENV_DIR

echo "Activating venv..."
source $VENV_DIR/bin/activate

echo "Installing dependencies..."
pip install -r requirements.txt

echo "Deployment finished successfully."
