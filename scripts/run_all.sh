#!/bin/bash

cd /app/scripts || exit 1

echo "Starting Server Health Check..."

./cpu-check.sh
./memory-check.sh
./disk-check.sh
./nginx-check.sh
./docker-check.sh
./report.sh

echo ""
echo "Health Check Completed!"
