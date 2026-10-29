#!/bin/bash
echo "=============================="
echo "Student Information"
echo "=============================="
echo
echo "Name: Adilzhan"
echo "Surname: Abdambayev"
echo "Group: IT2-2309"
echo "Student ID: 37144"
echo
echo "=============================="
echo "System Information"
echo "=============================="
echo
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -a)"
echo "Disk Usage:"
df -h /
echo "Memory Usage:"
free -h
echo
if [ -f "$HOME/devops/abdambayev_adilzhan/Abdambayev_Adilzhan_info.txt" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
