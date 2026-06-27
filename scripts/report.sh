#!/bin/bash

REPORT="../reports/server_report.txt"

echo "  " > $REPORT
echo " SERVER HEALTH REPORT " >> $REPORT
echo "  " >> $REPORT
echo "Date: $(date)" >> $REPORT
echo "" >> $REPORT

echo "CPU Usage:" >> $REPORT
top -bn1 | grep "Cpu(s)" >> $REPORT
echo "" >> $REPORT

echo "Memory Usage:" >> $REPORT
free -h >> $REPORT
echo "" >> $REPORT

echo "Disk Usage:" >> $REPORT
df -h / >> $REPORT
echo "" >> $REPORT

echo "Nginx Status:" >> $REPORT
systemctl is-active nginx >> $REPORT
echo "" >> $REPORT

echo "Docker Status:" >> $REPORT
systemctl is-active docker 2>/dev/null || echo "Not Installed" >> $REPORT

echo "  " >> $REPORT

echo "Report Generated Successfully!"
