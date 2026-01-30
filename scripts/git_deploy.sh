#!/bin/bash

PROJECT_DIR="/home/ubuntu/ec2-deployment"

cd $PROJECT_DIR || exit 1

echo "Running git reset..."
git reset --hard

echo "Fetching latest code..."
git fetch --all

echo "Pulling latest code..."
git pull origin master

echo "Installing dependencies..."
pip3 install -r requirements.txt --user

echo "Deployment finished successfully."
