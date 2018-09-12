#!/usr/bin/env bash

#Checkin if there is a website running 
output=$(curl localhost)
if [ $? -eq 0 ]; then
  echo "There is a website running"
else 
  echo "No website running"
  exit 1
fi

#Checks if our webpage is the one running
echo $output | grep -i 'visit bulgaria'
if [ $? -eq 0 ]; then
  echo "Our webpage is running"
else 
  echo "Not our webpage"
  exit 1
fi


