#!/bin/bash

if [ "$1" == "1" ]; then
    sudo systemctl enable auto-cpufreq
    sudo systemctl start auto-cpufreq
    echo "auto-cpufreq has been enabled."
elif [ "$1" == "2" ]; then
    sudo systemctl disable auto-cpufreq
    echo "auto-cpufreq has been disabled."
else
    echo "Invalid argument. Please use the following commands:"
    echo "  1: Enable auto-cpufreq (using 'sudo systemctl enable auto-cpufreq')"
    echo "  2: Disable auto-cpufreq (using 'sudo systemctl disable auto-cpufreq')"
fi
