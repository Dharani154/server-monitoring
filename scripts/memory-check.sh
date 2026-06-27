
echo " MEMORY USAGE "

free -h

MEM=$(free | awk '/Mem/{printf("%.0f"), $3/$2*100}')

echo "Memory Usage: $MEM %"

if [ "$MEM" -gt 80 ]
then
    echo "WARNING: Memory usage is HIGH!"
else
    echo "Memory Status: Normal"
fi
