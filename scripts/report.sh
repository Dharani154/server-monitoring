#!/bin/bash

REPORT="/app/reports/server_report.txt"

echo "===================================" > "$REPORT"
echo "SERVER HEALTH REPORT" >> "$REPORT"
echo "===================================" >> "$REPORT"
echo "Date: $(date)" >> "$REPORT"
echo "" >> "$REPORT"

echo "CPU Usage:" >> "$REPORT"
top -bn1 | grep "Cpu(s)" >> "$REPORT"

echo "" >> "$REPORT"
echo "Memory Usage:" >> "$REPORT"
free -h >> "$REPORT"

echo "" >> "$REPORT"
echo "Disk Usage:" >> "$REPORT"
df -h / >> "$REPORT"

echo "" >> "$REPORT"
echo "Nginx Status:" >> "$REPORT"
if pgrep nginx > /dev/null
then
    echo "Running" >> "$REPORT"
else
    echo "Not Running" >> "$REPORT"
fi

echo "" >> "$REPORT"
echo "Docker Status:" >> "$REPORT"
if command -v docker >/dev/null 2>&1
then
    echo "Installed" >> "$REPORT"
else
    echo "Not Available Inside Container" >> "$REPORT"
fi

echo ""
echo "Report Generated Successfully!"