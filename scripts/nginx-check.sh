
echo " NGINX STATUS "
if systemctl is-active --quiet nginx
then
    echo "Nginx is Running"
else
    echo "Nginx is Stopped"
fi
