
echo " DOCKER STATUS "

if systemctl is-active --quiet docker
then
    echo "Docker is Running"
else
    echo "Docker is Not Installed or Not Running"
fi
