#!/bin/bash

echo "========== DOCKER STATUS =========="

if command -v docker >/dev/null 2>&1
then
    echo "Docker CLI is Installed"
else
    echo "Docker CLI is Not Available Inside Container"
fi