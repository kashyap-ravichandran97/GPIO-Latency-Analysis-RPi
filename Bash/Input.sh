echo 27 > /sys/class/gpio/export
echo 17 > /sys/class/gpio/export
sleep 0.5
echo "in" > /sys/class/gpio/gpio27/direction
echo "out" > /sys/class/gpio/gpio17/direction

COUNTER=0
flag=0
while [ $COUNTER -lt 100000 ]; do
    if [ $flag == 0 ]; then
    	cat /sys/class/gpio/gpio27/value > /sys/class/gpio/gpio17/value
    	echo 0 > /sys/class/gpio/gpio17/value
	flag=1;fi
    if [ "$(</sys/class/gpio/gpio27/value)" == 0 ]; then flag=0;fi	
    let COUNTER=COUNTER+1
done
echo 27 > /sys/class/gpio/unexport
echo 17 > /sys/class/gpio/unexport
