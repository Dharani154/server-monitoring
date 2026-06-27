
echo " DISK USAGE "

df -h /

DISK=$(df / | awk 'END{print $5}' | sed 's/%//')

echo "Disk Usage: $DISK %"

if [ "$DISK" -gt 80 ]
then
    echo "WARNING: Disk usage is HIGH!"
else
    echo "Disk Status: Normal"
fi
