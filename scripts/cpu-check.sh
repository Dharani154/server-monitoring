
echo " CPU USAGE "

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2+$4}')

echo "Current CPU Usage: $CPU %"

if (( $(echo "$CPU > 80" | bc -l) ))
then
    echo "WARNING: CPU usage is HIGH!"
else
    echo "CPU Status: Normal"
fi
