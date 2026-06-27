#!/bin/bash

echo "Starting Server Health Check..."

echo ""
./cpu-check.sh

echo ""
./memory-check.sh

echo ""
./disk-check.sh

echo ""
./nginx-check.sh

echo ""
./docker-check.sh

echo ""
./report.sh

echo "......!"
echo "Health Check Completed!"
