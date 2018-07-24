#!/bin/sh

if [ "$PERFER_IPV4" == "true" ]; then
	echo "precedence ::ffff:0:0/96 100" > /etc/gai.conf
else
	rm -rf /etc/gai.conf
fi

sed -i "s/^Port .*/Port ${PORT}/" /etc/tinyproxy/tinyproxy.conf

tinyproxy -d
