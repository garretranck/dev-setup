#!/bin/bash
# Setup Debain-based machine

echo -e "\n\n*** 1. Updating ***\n\n"
sudo apt update && sudo apt full-upgrade -y

echo -e "\n\n*** 2. Installing packages ***\n\n"
sudo apt install nano tmux docker.io docker-compose htop net-tools -y

echo -e "\n\n*** 3.Copying tmux conf ***\n\n"
cp tmux.conf ~/.tmux.conf

echo -e "\n\n*** 4. Launching tmux session ***\n\n"
tmux new -s dev 
