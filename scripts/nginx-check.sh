
echo " NGINX STATUS "

if pgrep nginx > /dev/null
then
    echo "Nginx is Running"
else
    echo "Nginx is Not Running"
fi